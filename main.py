from tkinter.font import Font
from abc import ABC, abstractmethod
from locogauge import SpeedGauge, TractiveEffortGauge, PressureGauge, ControlLeaver, RotarySwitch, SwitchPosition, \
    LeaverSwitch
from trackmap import TrackMap

import tkinter as tk
import tkinter.messagebox as msb
import tkinter.ttk as ttk
import paho.mqtt.client as mqtt

import numpy as np
import serial
from serial.tools.list_ports import comports as list_ports
import os
import datetime
import time
import math
import threading
import json
import csv
import random

MAX_TR_BR_APPL = 3.8    # bar # TODO: PARAM
MAX_DIR_BR_APPL = 6     # bar # TODO: PARAM
MAX_TL_PRESS = 5        # bar # TODO: PARAM


DIR = os.getcwd()
IMG = os.path.join(DIR, "img")
MAIN_ICON = os.path.join(IMG, "dsfd.ico")
COMM_CONFIG = os.path.join(DIR, "comm_config.json")
REGISTERS = os.path.join(DIR, "registers.csv")
BITS = os.path.join(DIR, "bits.csv")
HJP = os.path.join(IMG, "hjp")

BAUD_RATE = 1e6
PARITY = serial.PARITY_NONE
BYTESIZE = serial.EIGHTBITS
STOP_BITS = serial.STOPBITS_ONE
SERIAL_SCAN_RATE = 2000


class SCodeVariable(tk.StringVar):

    SIGNAL_CODES = {"Bez kódu": 0, "Stůj": 1, "Mezikruží": 2, "Výstraha": 3, "Volno": 4}

    def set(self, value):
        if type(value) == str:
            super().set(value)
            return
        for name, code in self.SIGNAL_CODES.items():
            if code == value:
                super().set(name)
                return

    def get(self):
        return self.SIGNAL_CODES[super().get()]


class Sim:
    """Slouží k fyzikální simulaci pohybu vlaku"""

    MASS = 200  # t # TODO: PARAM
    ACCELERATON = 0.9  # m/s/s # TODO: PARAM
    BRAKING_FORCE = MASS * ACCELERATON  # kN # TODO: PARAM
    FILLING_TIME = 7  # s # TODO: PARAM
    VENTING_TIME = 16  # s # TODO: PARAM
    POWER = 6400  # kW # TODO: PARAM
    SLOPE = 0  # promille # TODO: PARAM
    ADHESION_UTILISATION = 0.8 # TODO: PARAM
    A = 0.00033 # TODO: PARAM
    B = 0.0008 # TODO: PARAM
    C = 1.35 # TODO: PARAM
    TRAIN_LINE_DP = 0.20  # bar/s # TODO: PARAM
    TRAIN_LINE_VENT_TIME = 1.5  # s # TODO: PARAM
    LOCO_PARKING_BRAKE = 35  # kN # TODO: PARAM
    LOCO_PARKING_TIME = 2.5  # s # TODO: PARAM
    LOCO_MAX_EDB = 150  # kN # TODO: PARAM
    LOCO_MAX_TRACTION = 300  # kN # TODO: PARAM
    LOCO_DTRAX = LOCO_MAX_TRACTION / 6  # kN/s # TODO: PARAM
    LOCO_DEDB = LOCO_MAX_EDB / 6  # kN/s # TODO: PARAM
    LOCO_TRACTION_DELAY = 0.4  # s # TODO: PARAM

    @staticmethod
    def mu(speed):
        """Vypočítá součinitel adheze pro danou rychlost pohybu"""
        return (9000 / (speed * 3.6 + 42) + 116) * 1e-3

    def __init__(self, controller):
        self.controller = controller
        self.thread = threading.Thread()
        self._run = False
        self._pause = False

        self.mass = self.MASS * 1000  # kg # TODO: PARAM
        self.train_brake = self.BRAKING_FORCE * 1000  # N # TODO: PARAM
        self.fill_time = self.FILLING_TIME # TODO: PARAM
        self.vent_time = self.VENTING_TIME # TODO: PARAM
        self.power = self.POWER # TODO: PARAM
        self.slope = self.SLOPE # TODO: PARAM
        self.adhes_util = self.ADHESION_UTILISATION # TODO: PARAM
        self.a = self.A # TODO: PARAM
        self.b = self.B # TODO: PARAM
        self.c = self.C # TODO: PARAM

    def __del__(self):
        self.stop()

    def stop(self):
        self._run = False
        if self.thread.is_alive():
            self.thread.join(timeout=0.5)

    def start(self):
        """Spustí simulaci v novém vlákně"""
        if self.thread.is_alive():
            self.stop()
        try:
            self.load()
        except ValueError:
            msb.showerror("Neplatné zadání", "Nepodařilo se načíst parametry simulace!")
        else:
            self.controller.comm_variables["DRIVING_LEAVER"].set(3)
            self.thread = threading.Thread(target=self.run)
            self._run = True
            self.thread.start()

    def pause(self):
        self._pause = not self._pause
        if self._pause:
            self.controller.mp.pause_lbl.config(text="Pozastaveno")
        else:
            self.controller.mp.pause_lbl.config(text="")

    def load(self):
        # TODO: PARAM
        """Načte fyzikální parametry z UI jako atributy používané dále pro simulaci"""
        self.mass = float(self.controller.sim_variables["TRAIN_MASS"].get()) * 1000  # kg
        self.train_brake = float(self.controller.sim_variables["TRAIN_BRAKING_FORCE"].get()) * 1000  # N
        self.fill_time = float(self.controller.sim_variables["CYLINDER_FILL_TIME"].get())
        self.vent_time = float(self.controller.sim_variables["CYLINDER_VENT_TIME"].get())
        self.power = float(self.controller.sim_variables["POWER"].get()) * 1000  # W
        self.slope = float(self.controller.sim_variables["SLOPE"].get())
        self.adhes_util = float(self.controller.sim_variables["ADHESION_UTILISATION"].get())
        self.a = float(self.controller.sim_variables["A"].get())
        self.b = float(self.controller.sim_variables["B"].get())
        self.c = float(self.controller.sim_variables["C"].get())
        # TODO: PARAM

    def run(self):
        """Simulační smyčka"""
        t0 = time.time()
        traction_delay = t0
        train_brake = "hold"
        tb_application = 0
        traction = "-"
        edb = "hold"
        o_s = 9.81 * self.mass * np.sin(np.arctan(self.slope / 1000))  # N
        slip = False
        speed = 0

        while self._run:
            dt = time.time() - t0
            t0 = time.time()
            if not self._pause:
                # LOAD values from input variables
                epv = self.controller.comm_variables["EP_VALVE"].get()
                etcs_brake = self.controller.comm_variables["BRAKE"].get()
                if not slip:
                    speed = self.controller.comm_variables["SPEED"].get() / 3.6  # m/s
                tl = self.controller.comm_variables["TRAIN_LINE_PRESSURE"].get()
                bc = self.controller.comm_variables["BRAKE_CYLINDER_PRESSURE"].get()
                traction_indication = self.controller.sim_variables["TRACTION"].get() * 1000  # N
                traction_target = self.controller.sim_variables["TRACTION_TARGET"].get() * 1000  # N
                hjp = self.controller.comm_variables["DRIVING_LEAVER"].get()
                direction = self.controller.comm_variables["DIRECTION_LEAVER"].get()
                direction = -1 if direction == 2 else direction

                if hjp == 0:  # R
                    train_brake = "emergency"
                    edb = "full"
                    traction = "off"
                elif hjp == 1:  # BP
                    train_brake = "apply"
                    edb = "hold"
                    traction = "off"
                elif hjp == 2:  # BE
                    train_brake = "hold"
                    edb = "apply"
                    traction = "off"
                elif hjp == 3:  # VYBEH
                    train_brake = "hold"
                    edb = "hold"
                    traction = "-"
                elif hjp == 4:  # JIZDA
                    train_brake = "release"
                    edb = "release"
                    traction = "hold"
                elif hjp == 5:  # SOUHLAS
                    train_brake = "release"
                    edb = "off"
                    if tb_application <= 0 and bc <= 0:
                        traction = "+"
                    else:
                        traction = "hold"

                if direction == 0:
                    traction = "off"

                # ETCS service brake
                if etcs_brake:
                    traction = "-"
                    if tl > 3.5: # TODO: PARAM
                        train_brake = "apply"
                    else:
                        train_brake = "hold"

                # any ATP intervention
                if epv: # TODO: PARAM
                    train_brake = "emergency"
                    traction = "off"
                    edb = "full"

                # TRACTION & EDB
                if traction == "+":
                    if traction_target >= 0:
                        traction_target = min(traction_target + dt * self.LOCO_DTRAX * 1000,
                                              self.LOCO_MAX_TRACTION * 1000)
                elif traction == "-":
                    if traction_target >= 0:
                        traction_target = max(traction_target - dt * self.LOCO_DTRAX * 1000, 0)
                elif traction == "off":
                    traction_target = min(traction_target, 0)

                if edb == "full":
                    traction_target = -self.LOCO_MAX_EDB * 1000
                elif edb == "apply":
                    traction_target = max(traction_target - dt * self.LOCO_DEDB * 1000, -self.LOCO_MAX_EDB * 1000)
                elif edb == "release":
                    if traction_target < 0:
                        traction_target = min(traction_target + dt * self.LOCO_DEDB * 1000, 0)
                elif edb == "off":
                    traction_target = max(traction_target, 0)

                if train_brake == "emergency" and traction_indication > 0:
                    traction_indication = 0
                if traction_indication == traction_target:
                    traction_delay = t0
                elif t0 >= traction_delay + self.LOCO_TRACTION_DELAY:
                    diff = abs(traction_target - traction_indication)
                    if (abs(traction_target) < abs(traction_indication)) or traction_target * traction_indication <= 0:
                        q = 2
                    else:
                        q = 1
                    if traction_indication < 0:
                        dy = min(dt * self.LOCO_DEDB * 1000 / 2 * q, diff)
                    else:
                        dy = min(dt * self.LOCO_DTRAX * 1000 / 2 * q, diff)
                    sgn = np.sign(traction_target - traction_indication)
                    cross_zero = (traction_indication * (traction_indication + sgn * dy) < 0)
                    traction_indication += sgn * dy
                    if cross_zero:
                        traction_delay = t0
                        traction_indication = 0
                if traction_indication < 0 and abs(speed) <= 40.0 * 3.6:
                    traction_indication = max(traction_indication, -abs(speed) / 40 * 3.6 * self.LOCO_MAX_EDB * 1000)
                # prevent oscilation
                if traction_target == 0 and abs(traction_indication) < 500: # TODO: PARAM - traction cut-off
                    traction_indication = 0
                if speed != 0:
                    if traction_indication > 0:
                        traction_indication = min(abs(traction_indication), abs(self.power / speed))
                    else:
                        traction_indication = -min(abs(traction_indication), abs(self.power / speed))

                # TRAIN BRAKE
                if train_brake == "emergency":
                    if tl > 0.3: # TODO: PARAM
                        dtl = 5 * dt / self.TRAIN_LINE_VENT_TIME * tl # TODO: PARAM - max TL pressure
                    else:
                        dtl = MAX_TL_PRESS * dt / 5 / self.TRAIN_LINE_VENT_TIME
                    tl = max(0, tl - dtl)
                elif train_brake == "apply":
                    tl = max(0, tl - self.TRAIN_LINE_DP * dt)
                elif train_brake == "release":
                    tl = min(5, tl + self.TRAIN_LINE_DP * dt)
                reduction_percentage = min(MAX_TL_PRESS - tl, MAX_TL_PRESS - 3.5) / (MAX_TL_PRESS - 3.5) # TODO: PARAM
                tb_target = reduction_percentage * MAX_TR_BR_APPL
                if tb_application > tb_target:
                    tb_application = max(tb_target, tb_application - dt / self.vent_time * MAX_TR_BR_APPL)
                else:
                    tb_application = min(tb_target, tb_application + dt / self.fill_time * MAX_TR_BR_APPL)

                brake = tb_application / MAX_TR_BR_APPL * self.train_brake

                # DIRECT BRAKE
                if abs(speed) < 1.0 / 3.6 and hjp not in (4, 5):  # AUTOMATIC PARKING # TODO: PARAM
                    db_target = MAX_DIR_BR_APPL
                else:
                    db_target = reduction_percentage * MAX_DIR_BR_APPL
                if bc < db_target:
                    bc = min(db_target, bc + dt / self.LOCO_PARKING_TIME * MAX_DIR_BR_APPL)
                else:
                    bc = max(db_target, bc - dt / self.LOCO_PARKING_TIME * MAX_DIR_BR_APPL)

                direct_brake = bc / MAX_DIR_BR_APPL * self.LOCO_PARKING_BRAKE * 1000 # TODO: PARAM

                # WHEEL SLIP
                o_v = (self.c + self.b * abs(speed) * 3.6 + self.a * (speed * 3.6) ** 2) * self.mass / 1000 * 9.81
                # TODO: PARAM - loco mass
                # TODO: PARAM - gravity acceleration
                # TODO: Slipping temporarily disabled
                # ft = 88 * 1000 * 9.81 * Sim.mu(abs(speed)) * self.adhes_util
                # if max(traction_indication, -traction_indication + direct_brake) > ft:
                #     self.controller.sim_variables["SLIP"].set(True)
                #     slip = True
                # else:
                #     self.controller.sim_variables["SLIP"].set(False)
                #     slip = False
                self.controller.sim_variables["SLIP"].set(False)
                slip = False
                # TODO: Slipping temporarily disabled

                brake += direct_brake

                # SPEED
                tractive_force = - o_s + (direction * traction_indication if traction_indication > 0 else 0)
                resistance = brake + o_v + (-traction_indication if traction_indication < 0 else 0)
                if speed != 0:
                    f = tractive_force - resistance * np.sign(speed)
                else:
                    f = max((abs(tractive_force) - resistance), 0) * np.sign(tractive_force)
                    # f = (abs(tractive_force) - resistance) if abs(tractive_force) > resistance else 0
                acceleration = f / self.mass
                if (abs(speed) < abs(dt * acceleration)) and acceleration * speed < 0:
                    speed = 0
                else:
                    speed += dt * acceleration

                dist = speed * dt
                self.controller.mp.track.shift(dist)

                # SEND and DISPLAY output values
                if slip:
                    self.controller.comm_variables["SPEED"].set(min(speed * 3.6 * random.uniform(0.1, 3), 220))  # km/h
                else:
                    self.controller.comm_variables["SPEED"].set(speed * 3.6)  # km/h
                self.controller.comm_variables["TRAIN_LINE_PRESSURE"].set(tl)
                self.controller.comm_variables["BRAKE_CYLINDER_PRESSURE"].set(bc)
                self.controller.sim_variables["TRACTION_TARGET"].set(traction_target / 1000)  # kN
                self.controller.sim_variables["TRACTION"].set(traction_indication / 1000)  # kN

            time.sleep(0.01)


class Comm(ABC):

    def __init__(self, controller):
        self.controller = controller
        self._run = False
        self.paused = True
        self.log = []
        self.msg_handles = {}
        self.thread = threading.Thread()
        self.comm_config = {}
        # TODO - Create method 'config' that checks if passed 'config_data' contains all information needed
        #  for this way of communication

    @abstractmethod
    def get_tkinter_pane(self, parent):
        pass

    @abstractmethod
    def send(self, msg_type, **kwargs):
        pass

    @abstractmethod
    def config(self, config_data):
        pass

    def attach_handle(self, msg_type, handler, *args, **kwargs):
        """Uloží callback, který je volán při přijetí zprávy s daným ID."""
        self.msg_handles[msg_type] = {
            "handler": handler,
            "args": args,
            "kwargs": kwargs
        }

    @abstractmethod
    def start(self):
        pass

    @abstractmethod
    def run(self):
        pass

    @abstractmethod
    def resume(self):
        pass

    @abstractmethod
    def pause(self):
        pass

    @abstractmethod
    def stop(self):
        pass


class CommPane(tk.Frame, ABC):
    pass


class DummyComm(Comm):
    """Testovací komunikační kanál. Zprávy nejsou odesílány pouze vypisovány do logu."""

    def get_tkinter_pane(self, parent):
        return DummyPane(parent, self)

    def __init__(self, controller):
        super().__init__(controller)

    def __del__(self):
        self.stop()

    def config(self, config_data):
        self.comm_config = config_data

    def send(self, msg_type, **kwargs):
        """Odešle CAN zprávu převodníku po seriovém portu."""
        data = kwargs.get("data", [])
        rtr = kwargs.get("rtr", False)
        msg_format = self.comm_config[msg_type]

        # logging
        msg = {
            "type": msg_type,
            "id": msg_format["id"],
            "data": kwargs.get("data", None),
            "bytes": data,
            "time": datetime.datetime.now(),
            "rtr": rtr,
            "tx/rx": "tx"
        }
        self.log.append(msg)
        self.controller.logger.display_record(msg)

    def start(self):
        """Spustí komunikační smyčku v novém vlákně"""
        self.thread = threading.Thread(target=self.run)
        self._run = True
        self.thread.start()

    def resume(self):
        """Obnoví odesílání zpráv"""
        self.controller.mp.run_stop_btn.config(text="Pauza", command=self.pause)
        self.paused = False

    def pause(self):
        """Pozastaví odesílání zpráv"""
        self.controller.mp.run_stop_btn.config(text="Spustit", command=self.resume)
        self.paused = True

    def stop(self):
        """Zastaví komunikační smyčku"""
        self._run = False
        if self.thread.is_alive():
            self.thread.join(timeout=0.5)

    def run(self):
        while self._run:
            if len(self.log) > 200:
                del self.log[0:-200]

            if not self.paused:
                for key, msg_type in self.comm_config.items():
                    if time.time() >= msg_type["last_transmission"] + msg_type["period"] / 1000:
                        data = self.controller.comm_variables[key].get()
                        if key in ("EP_VALVE", "LS_INDICATOR"):
                            continue
                        self.send(key, data=data)
                        msg_type["last_transmission"] = time.time()

            time.sleep(1 / SERIAL_SCAN_RATE)


class DummyPane(CommPane):

    def __init__(self, parent, comm):
        super().__init__(parent)
        self.comm = comm

    def connect(self):
        """Otevře hlavní okno aplikace a připojí se k CAN převodníku."""
        self.comm.start()
        return True


class SerialComm(Comm):
    """Komunikace po seriovém portu
    Pro simulátor ETCS nepotřebná, nutno předelat na MQQT klienta.

    (SimEmulator původně po seriovém portu komunikoval s CAN převodníkem, který posílá zprávy HW prvkům.)
    """

    MSG_INTERVAL = 0.3
    read_register_callback = None
    read_register_data_output = None

    def get_tkinter_pane(self, parent):
        return SerialPane(parent, self)

    def __init__(self, controller):
        super().__init__(controller)
        self.msg_buffer = bytearray()
        self.ser = serial.Serial()

    def __del__(self):
        self.stop()

    def config(self, config_data):
        self.comm_config = config_data

    # def load_config(self, filename):
    #     """Načte data o CAN komunikaci ze souboru."""
    #     try:
    #         with open(filename) as f:
    #             loaded_data = json.load(f)
    #             if type(loaded_data) != dict:
    #                 raise ValueError
    #     except FileNotFoundError:
    #         msb.showerror("CAN konfigurace", "Nenalezen soubor CAN konfigurace!")
    #         self.controller.destroy()
    #     except ValueError:
    #         msb.showerror("CAN konfigurace", "Soubor CAN konfigurace se nepodařilo načíst!")
    #         self.controller.destroy()
    #
    #     data = dict()
    #     for key in loaded_data:
    #         try:
    #             assert type(item := loaded_data[key]) == dict
    #             assert type(item["id"]) == int
    #             assert item["id"] <= 2**29
    #             assert type(item.setdefault("length", 1)) == int
    #             assert (item["length"] <= 8) and (item["length"] >= 1)
    #             assert type(item.setdefault("multiplier", 1)) == int
    #             assert type(item.setdefault("signed", False)) == bool
    #         except AssertionError:
    #             msb.showwarning("CAN konfigurace",
    #                             f"Chyba při načítání položky {key} ze souboru CAN konfigurace!")
    #             continue
    #         else:
    #             item.setdefault("period", 100)
    #             item["last_transmission"] = time.time()
    #             data[key] = item
    #     self.comm_config = data

    def send(self, msg_type, **kwargs):
        """Odešle CAN zprávu převodníku po seriovém portu."""
        data = kwargs.get("data", [])
        rtr = kwargs.get("rtr", False)
        msg_format = self.comm_config[msg_type]
        sidh = (msg_format["id"] >> 3) & 0b11111111
        sidl = (msg_format["id"] & 0b111) << 5  # SIDL for standart frame
        eid8 = None
        eid0 = None
        if msg_format["id"] >= 2048:
            # set EXIDE, add two MSB from ID as two LSB of SIDL
            sidl += 0b00001000 + (msg_format["id"] >> 27)
            eid8 = (msg_format["id"] >> 19) & 0b11111111
            eid0 = (msg_format["id"] >> 11) & 0b11111111
        if rtr:
            dlc = 0b01000000  # set RTR bit
        else:
            dlc = msg_format["length"] & 0b00001111
        try:
            if type(data) == bool:
                data = int(data)
            if type(data) == int:
                data = (data*msg_format["multiplier"]).to_bytes(msg_format["length"], "big",
                                                                signed=msg_format["signed"])
            if type(data) == float:
                data = math.trunc(data * msg_format["multiplier"])
                data = data.to_bytes(msg_format["length"], "big", signed=msg_format["signed"])
            if type(data) in (list, tuple):
                data = [i.to_bytes(msg_format["length"], byteorder="big", signed=msg_format["signed"]) for i in data]
                if len(data) > msg_format["length"]:
                    raise OverflowError

        except OverflowError as e:
            m = "Given value doesn't fit into available 'length' of {} for message of type: {}"
            m = m.format(msg_format["length"], msg_type)
            raise ValueError(m) from e

        # send prepared bytes, those with None value are filtered out
        if self.ser.out_waiting <= 500:
            self.ser.write(bytearray(filter(lambda x: x is not None, [sidh, sidl, eid8, eid0, dlc, *data])))

        # logging
        msg = {
            "type": msg_type,
            "id": msg_format["id"],
            "data": kwargs.get("data", None),
            "bytes": data,
            "time": datetime.datetime.now(),
            "rtr": rtr,
            "tx/rx": "tx"
        }
        self.log.append(msg)
        self.controller.logger.display_record(msg)

    def start(self):
        """Spustí komunikační smyčku v novém vlákně"""
        self.thread = threading.Thread(target=self.run)
        self._run = True
        self.thread.start()

    def resume(self):
        """Obnoví odesílání zpráv"""
        self.controller.mp.run_stop_btn.config(text="Pauza", command=self.pause)
        self.paused = False

    def pause(self):
        """Pozastaví odesílání zpráv"""
        self.controller.mp.run_stop_btn.config(text="Spustit", command=self.resume)
        self.paused = True

    def stop(self):
        """Zastaví komunikační smyčku"""
        self._run = False
        if self.thread.is_alive():
            self.thread.join(timeout=0.5)
        self.ser.close()

    def read_registers(self, callback):
        """Čte nastavení CAN převodníku
        (Pro ETCS nevýznané)
        """
        self.read_register_callback = callback
        self.ser.write(bytearray([ord('2'), 0b00000100]))

    def write_registers(self, data):
        """Zapisuje nastavení CAN převodníku
        (Pro ETCS nevýznané)
        """
        if len(data) == 128 and type(data) in (bytes, bytearray):
            self.ser.write(bytearray([ord('3'), 0b00000100]))
            self.ser.write(data)
        else:
            raise ValueError("Invalid data for writing MCP2515 registers!")

    def run(self):
        """Komunikančí smyčka"""
        error = False
        hbt = time.time()
        while self._run:
            if len(self.log) > 200:
                del self.log[0:-200]

            if not self.paused:
                for key, msg_type in self.comm_config.items():
                    if time.time() >= msg_type["last_transmission"] + msg_type["period"] / 1000:
                        data = self.controller.comm_variables[key].get()
                        if key in ("EP_VALVE", "LS_INDICATOR"):
                            continue
                        self.send(key, data=data)
                        msg_type["last_transmission"] = time.time()
                if error:
                    limit = 200
                else:
                    limit = 1000
                if time.time() > hbt + limit / 1000:
                    self.ser.write(bytearray([ord('4'), 0b00000100]))
                    hbt = time.time()

            n = 2
            rtr = False
            rr = False  # READ_REGISTERS command
            hb = False  # HEARTH_BEAT command
            dlc = 0
            try:
                if self.msg_buffer[1] & 0b00000100:  # COMMAND?
                    if self.msg_buffer[0] == ord('2'):  # READ_REGISTERS command?
                        n = 130
                        rr = True
                    elif self.msg_buffer[0] == ord('4'):  # HEARTH_BEAT command?
                        n = 4
                        hb = True
                else:
                    if self.msg_buffer[1] & 0b00001000:  # is EXIDE set?
                        n = 5
                        if self.msg_buffer[4] & 0b01000000:  # is RTR set?
                            rtr = True
                    else:
                        n = 3
                        if self.msg_buffer[1] & 0b00010000:  # is SRR set?
                            rtr = True
                            n = 2
                    if not rtr:
                        dlc = self.msg_buffer[n-1] & 0b00001111
                        n += dlc  # add received message length to the expected 'n' of bytes
                if len(self.msg_buffer) < n:
                    raise IndexError  # given number of data-bytes was not yet received
            except IndexError:
                n -= len(self.msg_buffer)
                if self.ser.in_waiting > 0:
                    self.msg_buffer += self.ser.read(size=n)  # non-blocking read (provided Serial.timeout is 0)
                    continue

            else:  # all bytes of current message/command received - now process it
                if rr:
                    if self.read_register_callback:
                        self.read_register_callback(self.msg_buffer[2:])
                        self.read_register_callback = None
                elif hb:
                    self.controller.mp.last_hbt_lbl.config(text=datetime.datetime.now().strftime("%H:%M:%S.%f"))
                    self.controller.mp.tec_lbl.config(text=str(self.msg_buffer[2]))
                    self.controller.mp.rec_lbl.config(text=str(self.msg_buffer[3]))
                    error = False
                else:
                    if error:
                        self.msg_buffer = bytearray()
                        continue
                    msg = {"id": 0, "type": None, "data": None, "time": datetime.datetime.now(),
                           "rtr": rtr, "tx/rx": "rx"}
                    if self.msg_buffer[1] & 0b00001000:  # is EXIDE set?
                        msg["id"] += (self.msg_buffer[1] & 0b00000011) << 27  # two LSB of SIDL are two MSB of ID
                        msg["id"] += self.msg_buffer[2] << 19  # EID8
                        msg["id"] += self.msg_buffer[3] << 11  # EID0
                    msg["id"] += self.msg_buffer[0] << 3  # SIDH
                    msg["id"] += (self.msg_buffer[1] & 0b11100000) >> 5  # SIDL
                    msg_format = None
                    for key, value in self.comm_config.items():  # search known message-IDs for the received one
                        if msg["id"] == value["id"]:
                            msg["type"] = key
                            msg_format = value
                            break
                    if msg_format is None:
                        #  msb.showwarning("CAN", "Neznámé ID CAN zprávy: {}". format(msg["id"]))
                        error = True
                        self.msg_buffer = bytearray()  # message was processed - clear buffer
                        self.controller.logger.display_record(msg)  # save message to log
                        continue
                    else:
                        if (not rtr) and (dlc != msg_format["length"]):
                            # msb.showerror("CAN",
                            #               "DLC {} nesouhlasí s formátem CAN zprávy: {}".format(dlc, msg["type"]))
                            error = True
                            self.msg_buffer = bytearray()  # message was processed - clear buffer
                            self.controller.logger.display_record(msg)  # save message to log
                            continue
                    # decode data using info from identified message type
                    msg["bytes"] = self.msg_buffer[-dlc:] if dlc != 0 else []
                    msg["data"] = msg["bytes"]
                    msg["data"] = int.from_bytes(msg["data"], byteorder="big", signed=msg_format["signed"])
                    msg["data"] /= msg_format["multiplier"]
                    self.log.append(msg)  # save message to log
                    self.controller.logger.display_record(msg)  # save message to log
                    # call appropriate message handle
                    try:
                        handle = self.msg_handles[msg["type"]].copy()
                        handle["kwargs"]["rtr"] = msg["rtr"]
                        handle["kwargs"]["data"] = msg["data"]
                        handle["handler"](*handle["args"], **handle["kwargs"])
                    except KeyError:
                        # no handle attached to given message type
                        pass
                self.msg_buffer = bytearray()  # message was processed - clear buffer
                if self.ser.in_waiting > 0:
                    continue
            # wait given time before scanning the Serial input again
            time.sleep(1/SERIAL_SCAN_RATE)


class SerialPane(CommPane):

    def __init__(self, parent, comm):

        super().__init__(parent)
        self.ports_list = None
        self.comm = comm
        tk.Label(self, text="Port:").grid(row=1, column=1, sticky="ew")
        self.port_lbox = tk.Listbox(self, width=40, selectmode="single")
        self.refresh()
        self.port_lbox.grid(row=2, column=1, sticky="ew")

        self.ref_b = tk.Button(self, text="Obnovit seznam", command=self.refresh)
        self.ref_b.grid(row=3, column=1, pady=5)

    def refresh(self):
        """Obnovení seznamu dostupných COM portů pro připojení."""
        self.ports_list = list_ports()
        self.port_lbox.delete(0, "end")
        for index, port in enumerate(self.ports_list):
            self.port_lbox.insert("end", f"{port.device} | {port.description}")

    def connect(self):
        """Otevře hlavní okno aplikace a připojí se k CAN převodníku."""
        try:
            port_index = self.port_lbox.curselection()
            assert len(port_index) == 1
            port_index = port_index[0]
            self.comm.ser.port = self.ports_list[port_index].device
            self.comm.ser.baudrate = BAUD_RATE
            self.comm.ser.bytesize = BYTESIZE
            self.comm.ser.parity = PARITY
            self.comm.ser.stopbits = STOP_BITS
            self.comm.ser.timeout = 0  # nonblocking reads
            self.comm.ser.write_timeout = None  # blocking writes
        except AssertionError:
            msb.showerror(title="Chyba", message="Nebyl vybrán žádný port")
            return False
        except Exception as e:
            msb.showerror(title="Chyba", message=repr(e))
            return False
        else:
            self.comm.ser.open()
            self.comm.start()
            return True


class MqttComm(Comm):

    def __init__(self, controller):
        super().__init__(controller)
        self.host = None
        self.port = None
        self.mqtt = mqtt.Client(client_id="SimEmulator")

    def __del__(self):
        self.stop()

    def get_tkinter_pane(self, parent):
        return MqttPane(parent, self)

    def send(self, msg_type, **kwargs):
        self.mqtt.publish(msg_type, payload=kwargs["data"])

    def config(self, config_data):
        self.comm_config = config_data

    def start(self):
        self.mqtt.connect(self.host, self.port)
        self.mqtt.subscribe("evc/tiu/#") # TODO - PARAM: message structure
        self.mqtt.on_message = self.on_message
        self.thread = threading.Thread(target=self.run)
        self._run = True
        self.paused = False
        self.thread.start()

    def on_message(self, client, userdata, message):
        data = json.loads(message.payload.decode('ascii'))
        try:
            self.controller.comm_variables["BRAKE"].set(data["service_brake"])
            self.controller.comm_variables["EP_VALVE"].set(data["emergency_brake"])
        except KeyError:
            print("Invalid data received from EVC!")

    def run(self):
        t = time.time()
        while self._run:
            if len(self.log) > 200:
                del self.log[0:-200]

            if not self.paused:
                self.mqtt.loop()
                if time.time() > t + 0.1: # TODO - PARAM: frequency
                    t = time.time()
                    # TODO - PARAM: message structure
                    data = json.dumps(
                        {"train_speed": self.controller.comm_variables["SPEED"].get()}
                    )
                    self.mqtt.publish("odo/evc", data)
                    data = json.dumps(
                        {
                            "battery_power": self.controller.comm_variables["BATTERY"].get(),
                            "cab": self.controller.comm_variables["CONTROL_SWITCH"].get(),
                            "train_direction": self.controller.comm_variables["DIRECTION_LEAVER"].get()
                        }
                    )
                    self.mqtt.publish("tiu/evc", data)

                # for key, msg_type in self.comm_config.items():
                #     if time.time() >= msg_type["last_transmission"] + msg_type["period"] / 1000:
                #         data = self.controller.comm_variables[key].get()
                #         if key in ("EP_VALVE", "LS_INDICATOR"):
                #             continue
                #         if msg_type["mqtt"]:
                #             self.send(key, data=data)
                #         msg_type["last_transmission"] = time.time()

            time.sleep(1 / SERIAL_SCAN_RATE)

    def resume(self):
        pass

    def pause(self):
        pass

    def stop(self):
        self._run = False
        if self.thread.is_alive():
            self.thread.join(timeout=0.5)
        self.mqtt.disconnect()


class MqttPane(CommPane):

    def __init__(self, parent, comm):

        super().__init__(parent)
        self.comm = comm

        self.host = tk.StringVar(value="localhost")
        self.port = tk.StringVar(value="1883")

        tk.Label(self, text="Host:").grid(row=0, column=0)
        tk.Entry(self, textvariable=self.host, width=15).grid(row=0, column=1)
        tk.Label(self, text="Port:").grid(row=1, column=0)
        tk.Entry(self, textvariable=self.port, width=6).grid(row=1, column=1)

    def connect(self):
        """Otevře hlavní okno aplikace a připojí se k CAN převodníku."""
        try:
            self.comm.host = self.host.get()
            self.comm.port = int(self.port.get())
        except ValueError:
            msb.showerror(title="Chyba", message="Nerozpoznáno číslo portu!")
            return False
        else:
            self.comm.start()
            return True


class Emulator(tk.Tk):
    """tkinter aplikace"""

    def __init__(self, *args, **kwargs):

        self.loaded_data = {}
        self.load_config(COMM_CONFIG)
        self.comm = None
        self.sim = Sim(self)

        tk.Tk.__init__(self, *args, **kwargs)
        self.title("SimEmulator")
        self.iconbitmap(default=MAIN_ICON)
        self.protocol("WM_DELETE_WINDOW", self.close)

        self.grid_rowconfigure(0, weight=1)
        self.grid_columnconfigure(0, weight=1)

        self.container = tk.Frame(self)
        self.container.grid(row=0, column=0, sticky="nsew")
        self.container.grid_rowconfigure(0, weight=1)
        self.container.grid_columnconfigure(0, weight=1)

        # variables storing data to be transmitted to the simulator
        self.comm_variables = {
            "BATTERY": tk.BooleanVar(value=False),
            "SIGNAL_CODE": SCodeVariable(value="Bez kódu"),
            "SPEED": tk.DoubleVar(value=0),
            "DIRECTION_LEAVER": tk.IntVar(value=0),
            "BRAKE_CYLINDER_PRESSURE": tk.DoubleVar(value=6),
            "TRAIN_LINE_PRESSURE": tk.DoubleVar(value=5),
            "VIGILANCE_BUTTON": tk.BooleanVar(value=False),
            "BRIGHTNESS": tk.IntVar(value=127),
            "VOLUME": tk.IntVar(value=127),
            "LS_SWITCH": tk.IntVar(value=0),
            "LS_INDICATOR": tk.IntVar(value=0),
            "EP_VALVE": tk.BooleanVar(value=True),
            "BRAKE": tk.BooleanVar(value=False),
            "CONTROL_SWITCH": tk.IntVar(value=0),
            "DRIVING_LEAVER": tk.IntVar(value=3),
            "WHISTLE": tk.BooleanVar(value=False),
            "EMP": tk.BooleanVar(value=False)
        }

        # variables storing data related to the physical simulation
        self.sim_variables = {
            "TRACTION_TARGET": tk.DoubleVar(value=0),
            "TRACTION": tk.DoubleVar(value=0),
            "SLIP": tk.BooleanVar(value=False),
            "TRAIN_MASS": tk.StringVar(),
            "ACCELERATION": tk.StringVar(),
            "TRAIN_BRAKING_FORCE": tk.StringVar(),
            "CYLINDER_FILL_TIME": tk.StringVar(),
            "CYLINDER_VENT_TIME": tk.StringVar(),
            "A": tk.StringVar(),
            "B": tk.StringVar(),
            "C": tk.StringVar(),
            "POWER": tk.StringVar(),
            "SLOPE": tk.StringVar(),
            "ADHESION_UTILISATION": tk.StringVar(),
        }

        self.logger = LoggerTreeView(self, self.comm)

        self.mp = None

        self.comm_variables["WHISTLE"].trace("w", lambda *_:  self.emp())
        self.comm_variables["DRIVING_LEAVER"].trace("w", lambda *_:  self.emp())

        self.cp = ConnectPage(self.container, self)
        self.cp.grid(row=0, column=0, sticky="nsew")

        self.cp.tkraise()

    def connect(self, comm):
        self.comm = comm
        self.comm.config(self.loaded_data)

        self.mp = MainPage(self.container, self)
        self.mp.grid(row=0, column=0, sticky="nsew")
        for name, var in self.comm_variables.items():
            self.comm.attach_handle(name, self.generic_rtr_response, type=name)

        self.sim_variables["SLIP"].trace("w", lambda *_: self.mp.set_slip(self.sim_variables["SLIP"].get()))

        var = self.comm_variables["LS_INDICATOR"]
        self.comm.attach_handle("LS_INDICATOR", lambda v=var, **kw: v.set(int(kw["data"])))
        var.trace("w", lambda *_, v=var: self.mp.set_ls_indicator(int(v.get())))

        var = self.comm_variables["EP_VALVE"]
        self.comm.attach_handle("EP_VALVE", lambda v=var, **kw: v.set(bool(kw["data"])))
        var.trace("w", lambda *_, v=var: self.mp.set_epv(bool(v.get())))

        self.mp.tkraise()

    def load_config(self, filename):
        """Načte data o CAN komunikaci ze souboru."""
        try:
            with open(filename) as f:
                loaded_data = json.load(f)
                if type(loaded_data) != dict:
                    raise ValueError
        except FileNotFoundError:
            msb.showerror("CAN konfigurace", "Nenalezen soubor CAN konfigurace!")
            self.close()
        except ValueError:
            msb.showerror("CAN konfigurace", "Soubor CAN konfigurace se nepodařilo načíst!")
            self.close()

        data = dict()
        for key in loaded_data:
            try:
                assert type(item := loaded_data[key]) == dict
                assert type(item["id"]) == int
                assert item["id"] <= 2**29
                assert type(item.setdefault("length", 1)) == int
                assert (item["length"] <= 8) and (item["length"] >= 1)
                assert type(item.setdefault("multiplier", 1)) == int
                assert type(item.setdefault("signed", False)) == bool
            except AssertionError:
                msb.showwarning("CAN konfigurace",
                                f"Chyba při načítání položky {key} ze souboru CAN konfigurace!")
                continue
            else:
                item.setdefault("period", 100)
                item["last_transmission"] = time.time()
                data[key] = item
        self.loaded_data = data

    def slip(self):
        """Zobrazí indikaci prokuzu kol na UI
        (Pro ETCS nepotřebné)
        """
        if self.sim_variables["SLIP"].get():
            self.mp.slip_lbl.config(bg="red")
        else:
            self.mp.slip_lbl.config(bg="gray")

    def emp(self):
        """Určuje stav elektromechanického převodníku pro LS90
        (Pro ETCS nepotřebné)
        """
        if self.comm_variables["WHISTLE"].get() or self.comm_variables["DRIVING_LEAVER"].get() in (1, 2, 5):
            self.comm_variables["EMP"].set(True)
        else:
            self.comm_variables["EMP"].set(False)

    def generic_rtr_response(self, *_, **kwargs):
        """Reaguje na CAN remote request rámec
        (Pro ETCS nepotřebné)
        """
        msg_type = kwargs["type"]
        var = self.comm_variables[msg_type]
        if kwargs["rtr"]:
            # if msg_type == "SIGNAL_CODE":
            #     self.comm.send(msg_type, data=SIGNAL_CODES[var.get()])
            # else:
            #     self.comm.send(msg_type, data=var.get())
            self.comm.send(msg_type, data=var.get())

    def close(self):
        """Zastaví komunikaci a simulaci, zavře okno aplikace"""
        if self.comm.thread.is_alive():
            t = "COM port otevřen"
            m = "Komunikace po sériovém portu stále probíhá. Opravdu přerušit?"
            if not msb.askokcancel(title=t, message=m):
                return
            self.comm.stop()
        if self.sim.thread.is_alive():
            self.sim.stop()
        self.destroy()


class Tooltip(tk.Toplevel):
    """Pomocná třída, pro ETCS nerelevantní"""
    def __init__(self, parent, event, data, **kwargs):
        super().__init__(parent, **kwargs)
        self.transient(parent)
        self.focus_set()
        self.bind("<Escape>", self.destroy)
        for i in range(8):
            tk.Label(self, text=f"Bit {7-i}", width=8, relief="ridge").grid(row=0, column=i)
            tk.Label(self, text=data[i], width=8, relief="ridge").grid(row=1, column=i)
        self.update_idletasks()
        geom = self.winfo_geometry()
        geom = geom.split("+")
        self.wm_geometry(f"{geom[0]}+{event.x_root}+{event.y_root}")


class MCPConfig(tk.Toplevel):
    """Pomocná třída, pro ETCS nerelevantní"""
    readonly_indices = (14, 15, 30, 31, 46, 47, 62, 63, 78, 79, 94, 95, 110, 111)

    def validate(self, action_code, new_text):
        if action_code == "0" and new_text == "":
            return True
        try:
            assert 0 <= int(new_text, base=2) <= 255
        except (ValueError, AssertionError):
            self.bell()
            return False
        else:
            return True

    def __init__(self, parent, comm, **kwargs):
        super().__init__(parent, **kwargs)
        self.comm = comm
        self.title("Nastavení MCP2515")
        self.transient(parent)
        self.focus_set()
        self.bind("<Escape>", self.abort)
        self.tl = None
        self.bind("<ButtonPress-3>", self.show_tooltip)
        self.bind("<ButtonRelease-3>", self.show_tooltip)
        self.data = list()
        self.load_data(REGISTERS, BITS)
        self.registers = tk.Frame(self)
        self.registers.grid(row=0, column=0, columnspan=2)
        self.validate_wrapper = self.register(self.validate)
        for row in range(16):
            tk.Label(self.registers, text=f"xxxx {row:04b}").grid(row=1+2*row, column=0, rowspan=2, sticky="ns")
        for column in range(8):
            tk.Label(self.registers, text=f"{column:04b} xxxx").grid(row=0, column=1+column, padx=10)
            for row in range(16):
                i = column * 16 + row
                tk.Label(self.registers, text=self.data[i][0]).grid(row=1+2*row, column=1+column, sticky="nsew")
                e = tk.Entry(self.registers, width=9, justify="center")
                if i in self.readonly_indices:
                    e.config(state="readonly")
                else:
                    e.config(validate="all", validatecommand=(self.validate_wrapper, "%d", "%P"))
                e.grid(row=2+2*row, column=1+column, sticky="nsew")
                self.data[i][2] = e
        self.confirm_btn = tk.Button(self, text="Zapsat nastavení", command=self.save)
        self.confirm_btn.grid(row=1, column=0, pady=5)
        self.abort_btn = tk.Button(self, text="Zrušit", command=self.abort)
        self.abort_btn.grid(row=1, column=1, pady=5)
        self.update_idletasks()
        x_pos = parent.winfo_rootx()
        y_pos = parent.winfo_rooty()
        geom = self.winfo_geometry()
        geom = geom.split("+")
        self.wm_geometry(f"{geom[0]}+{x_pos+30}+{y_pos+30}")
        self.load_current()

    def load_current(self):
        self.comm.read_registers(self.display_loaded)
        self.confirm_btn.config(text="Načítání dat ze zařízení...")
        self.confirm_btn.config(state="disabled")

    def display_loaded(self, values):
        for i, val in enumerate(values):
            self.data[i][2].delete(0, "end")
            if val == 0:
                self.data[i][2].insert(0, f"{val:b}")
            else:
                self.data[i][2].insert(0, f"{val:08b}")
        self.confirm_btn.config(text="Zapsat nastavení")
        self.confirm_btn.config(state="normal")

    def save(self):
        try:
            values = []
            for i, reg in enumerate(self.data):
                if i in self.readonly_indices:
                    values.append(0)
                else:
                    values.append(int(reg[2].get(), base=2))
            assert len(values) == 128
            values = bytearray(values)
        except ValueError:
            msb.showerror("Chybné zadání", "V některém z registrů je zadána neplatná hodnota!")
        except AssertionError:
            msb.showerror("Chybí hodnoty", "Nepodařilo se načíst hodnoty pro všech 128 registrů!")
        else:
            self.comm.write_registers(values)
            self.load_current()

    def abort(self, *_):
        self.destroy()

    def show_tooltip(self, event):
        for name, bits, widget in self.data:
            if widget == event.widget and bits:
                if not self.tl:
                    self.tl = Tooltip(self, event, bits)
                else:
                    self.tl.destroy()
                    self.tl = None

    def load_data(self, registers_file, bits_file):
        with open(registers_file, "rt") as f:
            reader = csv.reader(f)
            for row in reader:
                for reg_name in row:
                    self.data.append([reg_name, None, None])
        with open(bits_file, "rt") as f:
            reader = csv.reader(f)
            for row in reader:
                for reg in self.data:
                    if reg[0] == row[0]:
                        reg[1] = row[1:]


class MainPage(tk.Frame):
    """Hlavní okno aplikace"""
    _pressed = False  # filter long key presses
    _comm_visible = False  # výpis CAN zpráv - pro ETCS nepotřebné

    def stop(self):
        """Zastavení komunikace a návrat na stránku pro připojení k simulátoru"""
        self.controler.comm.stop()
        self.controler.cp.tkraise()

    def single_press(self, _):
        """Filtruje stisk "tlačítka bdělosti" - pro ETCS nerelevantní."""
        if not self._pressed:
            self._pressed = True
            self.controler.comm_variables["VIGILANCE_BUTTON"].set(True)

    def single_release(self, _):
        """Filtruje stisk "tlačítka bdělosti" - pro ETCS nerelevantní."""
        self._pressed = False
        self.controler.comm_variables["VIGILANCE_BUTTON"].set(False)

    def set_epv(self, value):
        """Zobrazení informace o otevření ventilu nouzové brzdy"""
        if value == 0:
            self.trp_lbl.config(text="EP ventil uzavřen", bg="gray")
        else:
            self.trp_lbl.config(text="EP ventil otevřen", bg="red")

    def set_slip(self, slipping):
        """Zobrazení informace o prokluzu kol"""
        if slipping:
            self.slip_lbl.config(bg="red")
        else:
            self.slip_lbl.config(bg="gray")

    def set_ls_indicator(self, value):
        """Zobrazení informace o stavu LS90 - pro ETCS nerelevantní"""
        colors = {0: "gray", 1: "red", 2: "green"}
        self.ls_switch_rb.config(bg=colors[value])

    def update_track(self, *_):
        """callback pro aktualizaci mapy trati po kliknutí"""
        # c = SIGNAL_CODES[self.controler.comm_variables["SIGNAL_CODE"].get()]
        c = self.controler.comm_variables["SIGNAL_CODE"].get()
        if c != 0:
            self.track.set(c)
        else:
            self.track.clear()

    def mcpreg(self):
        """Vyvolání okna pro konfiguraci CAN převodníku - pro ETCS nerelevantní"""
        tl = MCPConfig(self, self.controler.comm)
        self.controler.wait_window(tl)

    def compute_train_brake(self):
        """Výpočet maximální brzdné síly průběžné brzdy podle zadaného maximálního brzdného zrychlení."""
        mass = float(self.controler.sim_variables["TRAIN_MASS"].get())
        acceleration = float(self.controler.sim_variables["ACCELERATION"].get())
        self.controler.sim_variables["TRAIN_BRAKING_FORCE"].set(str(int(mass * acceleration)))

    def toggle_comm(self):
        """Vypnutí/zapnutí výpisu CAN zpráv - pro ETCS nerelevantní."""
        if self._comm_visible:
            self.controler.logger.freeze()
            self._comm_visible = False
            self.hide_btn.config(text="Zobrazit výpis")
            self.hbt.tkraise()
        else:
            self.controler.logger.unfreeze()
            self._comm_visible = True
            self.hide_btn.config(text="Skrýt výpis")
            self.comm.tkraise()

    def toggle_epv(self, _):
        val = self.controler.comm_variables["EP_VALVE"].get()
        self.controler.comm_variables["EP_VALVE"].set(not val)

    def __init__(self, parent, controller):
        """Inicializace a definice prvků UI"""
        tk.Frame.__init__(self, parent)
        self.controler = controller
        self.grid_rowconfigure(0, weight=1)
        self.grid_rowconfigure(10, weight=1)
        self.grid_columnconfigure(0, weight=1)
        self.grid_columnconfigure(10, weight=1)

        self.log = tk.LabelFrame(self, text="Komunikace")
        self.log.grid_rowconfigure(0, weight=1)
        self.log.grid_rowconfigure(500, weight=1)
        self.log.grid_columnconfigure(0, weight=1)
        self.log.grid_columnconfigure(10, weight=1)
        self.log.grid(row=1, column=1, columnspan=2, sticky="nsew")

        tk.Button(self.log, text="Nastavení MCP2515", command=self.mcpreg).grid(row=9, column=1, pady=5)
        self.hide_btn = tk.Button(self.log, text="Zobrazit výpis", command=self.toggle_comm)
        self.hide_btn.grid(row=9, column=2, pady=5)

        self.hbt = tk.Frame(self.log)
        self.hbt.grid_rowconfigure(0, weight=1)
        self.hbt.grid_rowconfigure(500, weight=1)
        self.hbt.grid_columnconfigure(0, weight=1)
        self.hbt.grid_columnconfigure(10, weight=1)
        self.hbt.grid(row=10, column=1, columnspan=2, sticky="nsew")

        self.comm = tk.Frame(self.log)
        self.comm.grid_rowconfigure(0, weight=1)
        self.comm.grid_rowconfigure(500, weight=1)
        self.comm.grid_columnconfigure(0, weight=1)
        self.comm.grid_columnconfigure(10, weight=1)
        self.comm.grid(row=10, column=1, columnspan=2, sticky="nsew")

        log_tw = LoggerTreeView(self.comm, self.controler.comm, height=10)
        self.controler.logger = log_tw
        log_tw.grid(row=10, column=1, columnspan=2)
        self.controler.logger.freeze()

        tk.Label(self.hbt, text="Převodník aktivní:").grid(row=1, column=1, sticky="e")
        self.last_hbt_lbl = tk.Label(self.hbt, text="--:--:--.---")
        self.last_hbt_lbl.grid(row=1, column=2, sticky="w")
        tk.Label(self.hbt, text="TEC:").grid(row=2, column=1, sticky="e")
        self.tec_lbl = tk.Label(self.hbt, text="---")
        self.tec_lbl.grid(row=2, column=2, sticky="w")
        tk.Label(self.hbt, text="REC:").grid(row=3, column=1, sticky="e")
        self.rec_lbl = tk.Label(self.hbt, text="---")
        self.rec_lbl.grid(row=3, column=2, sticky="w")
        self.hbt.tkraise()

        settings = tk.LabelFrame(self, text="Přímé nastavení hodnot")
        settings.grid_rowconfigure(0, weight=1)
        settings.grid_rowconfigure(500, weight=1)
        settings.grid_columnconfigure(0, weight=1)
        settings.grid_columnconfigure(10, weight=1)
        settings.grid(row=2, column=1, sticky="nsew")

        tk.Label(settings, text="Lokomotivní baterie").grid(row=8, column=1, sticky="e")
        tk.Radiobutton(settings, variable=self.controler.comm_variables["BATTERY"],
                       value=0, text="Vypnuto").grid(row=8, column=2)
        tk.Radiobutton(settings, variable=self.controler.comm_variables["BATTERY"],
                       value=1, text="Zapnuto").grid(row=8, column=3)

        tk.Label(settings, text="Spínač řízení").grid(row=9, column=1, sticky="e")
        tk.Radiobutton(settings, value=0, text="Vypnuto",
                       variable=self.controler.comm_variables["CONTROL_SWITCH"]).grid(row=9, column=2)
        tk.Radiobutton(settings, value=1, text="Zapnuto",
                       variable=self.controler.comm_variables["CONTROL_SWITCH"]).grid(row=9, column=3)

        tk.Label(settings, text="Přepínač LS90:").grid(row=10, rowspan=2, column=1, sticky="e")
        tk.Radiobutton(settings, value=0, text="Vypnuto",
                       variable=self.controler.comm_variables["LS_SWITCH"]).grid(row=10, column=2)
        self.ls_switch_rb = tk.Radiobutton(settings, value=1, text="Start",
                                           variable=self.controler.comm_variables["LS_SWITCH"])
        tk.Radiobutton(settings, value=2, text="Provoz",
                       variable=self.controler.comm_variables["LS_SWITCH"]).grid(row=10, column=4)
        self.ls_switch_colors = {0: "gray", 1: "red", 2: "green"}
        self.ls_switch_rb.config(bg="gray")
        self.ls_switch_rb.grid(row=10, column=3)

        tk.Label(settings, text="Přijímaný kód:").grid(row=20, column=1, sticky="e")
        sig_opmenu = tk.OptionMenu(settings, self.controler.comm_variables["SIGNAL_CODE"], *SCodeVariable.SIGNAL_CODES,
                                   command=self.update_track)
        sig_opmenu.config(width=10)
        self.controler.comm_variables["SIGNAL_CODE"].set(next(iter(SCodeVariable.SIGNAL_CODES.keys())))
        sig_opmenu.grid(row=20, column=2, columnspan=3, padx=5, pady=1, sticky="w")

        tk.Label(settings, text="Rychlost [km/h]:").grid(row=30, column=1, sticky="e")
        spd_sbox = ttk.Spinbox(settings, from_=-325, to=325, increment=5,
                               state="readonly", textvariable=self.controler.comm_variables["SPEED"])
        spd_sbox.set(0)
        spd_sbox.grid(row=30, column=2, columnspan=3, padx=5, sticky="w")

        tk.Label(settings, text="Směrová páka:").grid(row=40, rowspan=2, column=1, sticky="e")
        tk.Radiobutton(settings, variable=self.controler.comm_variables["DIRECTION_LEAVER"],
                       value=-1, text="Z").grid(row=40, column=2)
        tk.Radiobutton(settings, variable=self.controler.comm_variables["DIRECTION_LEAVER"],
                       value=0, text="0").grid(row=40, column=3)
        tk.Radiobutton(settings, variable=self.controler.comm_variables["DIRECTION_LEAVER"],
                       value=1, text="P").grid(row=40, column=4)

        tk.Label(settings, text="Průběžné potrubí [bar]:").grid(row=50, column=1, sticky="e")
        trline_sbox = ttk.Spinbox(settings, from_=0, to=MAX_TL_PRESS, increment=0.1, state="readonly",
                                  textvariable=self.controler.comm_variables["TRAIN_LINE_PRESSURE"])
        self.controler.comm_variables["TRAIN_LINE_PRESSURE"].set(5)
        trline_sbox.grid(row=50, column=2, columnspan=3, padx=5, sticky="w")

        tk.Label(settings, text="Přímočinná brzda [bar]:").grid(row=60, column=1, sticky="e")
        cylpres_sbox = ttk.Spinbox(settings, from_=0, to=MAX_DIR_BR_APPL, increment=0.1, state="readonly",
                                   textvariable=self.controler.comm_variables["BRAKE_CYLINDER_PRESSURE"])
        self.controler.comm_variables["BRAKE_CYLINDER_PRESSURE"].set(6)
        cylpres_sbox.grid(row=60, column=2, columnspan=3, padx=5, sticky="w")

        vig_btn = tk.Button(settings, text="Tlačítko bdělosti")
        vig_btn.bind("<ButtonPress-1>", lambda event: self.controler.comm_variables["VIGILANCE_BUTTON"].set(True))
        vig_btn.bind("<ButtonRelease-1>", lambda event: self.controler.comm_variables["VIGILANCE_BUTTON"].set(False))
        self.controler.bind("<KeyPress-space>", self.single_press)
        self.controler.bind("<KeyRelease-space>", self.single_release)
        vig_btn.grid(row=70, column=1, columnspan=4, pady=10, sticky="ew")

        emp_frame = tk.Frame(settings)
        emp_frame.grid(row=80, column=1, columnspan=4)
        emp_btn = tk.Button(emp_frame, text="EM převodník")
        emp_btn.bind("<ButtonPress-1>", lambda event: self.emp_options[self.emp_var.get()].set(True))
        emp_btn.bind("<ButtonRelease-1>", lambda event: self.emp_options[self.emp_var.get()].set(False))
        emp_btn.grid(row=0, column=0)
        self.emp_options = {"HJP": self.controler.comm_variables["DRIVING_LEAVER"],
                            "Píšťala": self.controler.comm_variables["WHISTLE"]}
        self.emp_var = tk.StringVar(value=next(iter(self.emp_options.keys())))
        tk.OptionMenu(emp_frame, self.emp_var, *self.emp_options).grid(row=0, column=1)

        tk.Label(settings, text="Jas:").grid(row=100, column=1, padx=5, sticky="e")
        brt_scl = tk.Scale(settings, from_=0, to=255, orient="horizontal",
                           variable=self.controler.comm_variables["BRIGHTNESS"], showvalue=False)
        self.controler.comm_variables["BRIGHTNESS"].set(127)
        brt_scl.grid(row=100, column=2, columnspan=3, padx=5)

        tk.Label(settings, text="Hlasitost houkačky:").grid(row=110, column=1, padx=5, sticky="e")
        vol_scl = tk.Scale(settings, from_=0, to=255, orient="horizontal",
                           variable=self.controler.comm_variables["VOLUME"], showvalue=False)
        self.controler.comm_variables["VOLUME"].set(127)
        vol_scl.grid(row=110, column=2, columnspan=3, padx=5)

        f = tk.Frame(settings)
        f.grid(row=120, column=1, columnspan=4, padx=5, sticky="ew")
        f.grid_columnconfigure(0, weight=1)
        f.grid_columnconfigure(1, weight=1)
        self.run_stop_btn = tk.Button(f, text="Spustit", command=self.controler.comm.resume)
        self.run_stop_btn.grid(row=0, column=0, pady=2)
        tk.Button(f, text="Stop", command=self.stop).grid(row=0, column=1, pady=2)

        driving = tk.LabelFrame(self, text="Řízení")
        driving.grid(row=1, column=3, rowspan=2, sticky="nsew")
        SpeedGauge(driving, max_=140, variable=self.controler.comm_variables["SPEED"]).grid(row=1, column=2)
        self.trax_gauge = TractiveEffortGauge(driving, target_variable=self.controler.sim_variables["TRACTION_TARGET"],
                                              traction_variable=self.controler.sim_variables["TRACTION"])
        self.trax_gauge.grid(row=1, column=3)
        f = tk.Frame(driving, relief="ridge", borderwidth=5)
        f.grid(row=2, column=2)
        train_line_gauge = PressureGauge(f, primary="red",
                                         primary_variable=self.controler.comm_variables["TRAIN_LINE_PRESSURE"])
        train_line_gauge.create_mark(5.0, color="primary")
        train_line_gauge.grid(row=0, column=0)
        tk.Label(f, text="Hlavní potrubí").grid(row=1, column=0)
        f = tk.Frame(driving, relief="ridge", borderwidth=5)
        f.grid(row=2, column=3)
        cylinder_gauge = PressureGauge(f, primary="red", max_=8,
                                       primary_variable=self.controler.comm_variables["BRAKE_CYLINDER_PRESSURE"])
        cylinder_gauge.create_mark(6.5, color="primary")
        cylinder_gauge.grid(row=0, column=0)
        tk.Label(f, text="Brzdový válec").grid(row=1, column=0)
        ctr_lvr = ControlLeaver(driving, variable=self.controler.comm_variables["DRIVING_LEAVER"], img_path=HJP)
        ctr_lvr.grid(row=1, column=1)
        switches = tk.Frame(driving)
        switches.grid(row=2, column=1, ipadx=5, ipady=5)
        RotarySwitch(switches,
                     notches=[
                         SwitchPosition(position=0, label="0", value=0),
                         SwitchPosition(position=90, label="1", value=1)],
                     default=SwitchPosition(position=0, label="0", value=0),
                     block=(90, 360), variable=self.controler.comm_variables["BATTERY"],
                     size=100).grid(row=0, column=0)
        tk.Label(switches, text="Baterie").grid(row=1, column=0)

        RotarySwitch(switches,
                     notches=[
                         SwitchPosition(position=0, label="0", value=0),
                         SwitchPosition(position=45, label="1", value=1)],
                     default=SwitchPosition(position=0, label="0", value=0),
                     block=(45, 360), variable=self.controler.comm_variables["CONTROL_SWITCH"],
                     size=100).grid(row=0, column=1)
        tk.Label(switches, text="Řízení").grid(row=1, column=1)

        LeaverSwitch(switches,
                     notches=[
                         SwitchPosition(position=-1, label="Z", value=-1),
                         SwitchPosition(position=0, label="0", value=0),
                         SwitchPosition(position=1, label="P", value=1)],
                     default=SwitchPosition(position=0, label="0", value=0),
                     variable=self.controler.comm_variables["DIRECTION_LEAVER"],
                     size=100).grid(row=0, column=2)
        tk.Label(switches, text="Směr").grid(row=1, column=2)

        indications = tk.LabelFrame(switches, text="Indikace")
        indications.grid(row=10, column=0, columnspan=3)
        indications.grid_rowconfigure(0, weight=1)
        indications.grid_rowconfigure(10, weight=1)
        indications.grid_columnconfigure(0, weight=1)
        indications.grid_columnconfigure(10, weight=1)
        self.trp_lbl = tk.Label(indications, text="EP ventil",
                                bg="magenta", width=20, height=3, relief="sunken", borderwidth=4)
        self.trp_lbl.grid(row=1, column=1, sticky="ew")
        self.trp_lbl.bind("<Button-1>", self.toggle_epv)
        self.slip_lbl = tk.Label(indications, text="Skluz",
                                 bg="gray", width=20, height=3, relief="sunken", borderwidth=4)
        self.slip_lbl.grid(row=2, column=1)

        track = tk.LabelFrame(self, text="Trať")
        track.grid(row=2, column=2, sticky="nsew")
        self.track = TrackMap(track, variable=self.controler.comm_variables["SIGNAL_CODE"])
        self.track.grid()

        sim = tk.LabelFrame(self, text="Simulace")
        sim.grid_columnconfigure(0, weight=1)
        sim.grid_columnconfigure(30, weight=1)
        sim.grid(row=3, column=1, columnspan=3)
        tk.Button(sim, text="Spustit", command=self.controler.sim.start, width=8).grid(row=0, column=1, sticky="e")
        tk.Button(sim, text="Pauza", command=self.controler.sim.pause, width=8).grid(row=1, column=1, sticky="e")
        self.pause_lbl = tk.Label(sim, text="", fg="red", width=13)
        self.pause_lbl.grid(row=1, column=2, sticky="w")
        tk.Label(sim, text="Hmotnost vlaku: [t]").grid(row=0, column=3, sticky="e")
        e = tk.Entry(sim, width=6, textvariable=self.controler.sim_variables["TRAIN_MASS"])
        self.controler.sim_variables["TRAIN_MASS"].set(str(self.controler.sim.MASS))
        e.grid(row=0, column=4, sticky="w")
        tk.Label(sim, text=u"Brzdné zrychlení: [m/s\u207b\u00b2]").grid(row=1, column=3, sticky="e")
        e = tk.Entry(sim, width=6, textvariable=self.controler.sim_variables["ACCELERATION"])
        self.controler.sim_variables["ACCELERATION"].set(str(self.controler.sim.ACCELERATON))
        e.grid(row=1, column=4, sticky="w")
        tk.Label(sim, text="Brzdná síla soupravy: [kN]").grid(row=0, column=5, sticky="e")
        e = tk.Entry(sim, width=5, textvariable=self.controler.sim_variables["TRAIN_BRAKING_FORCE"])
        self.controler.sim_variables["TRAIN_BRAKING_FORCE"].set(str(self.controler.sim.BRAKING_FORCE))
        e.grid(row=0, column=6, sticky="w")
        b = tk.Button(sim, text="Dopočítat ze zrychlení", command=self.compute_train_brake)
        b.grid(row=1, column=5, columnspan=2, sticky="e")
        tk.Label(sim, text="Doba plnění válce: [s]").grid(row=0, column=7, sticky="e")
        e = tk.Entry(sim, width=5, textvariable=self.controler.sim_variables["CYLINDER_FILL_TIME"])
        self.controler.sim_variables["CYLINDER_FILL_TIME"].set(str(self.controler.sim.FILLING_TIME))
        e.grid(row=0, column=8, sticky="w")
        tk.Label(sim, text="Doba vyprázdnění válce: [s]").grid(row=1, column=7, sticky="e")
        e = tk.Entry(sim, width=5, textvariable=self.controler.sim_variables["CYLINDER_VENT_TIME"])
        self.controler.sim_variables["CYLINDER_VENT_TIME"].set(str(self.controler.sim.VENTING_TIME))
        e.grid(row=1, column=8, sticky="w")
        tk.Label(sim, text="Maximální výkon [kW]").grid(row=0, column=9, sticky="e")
        tk.Entry(sim, width=5, textvariable=self.controler.sim_variables["POWER"]).grid(row=0, column=10, sticky="w")
        self.controler.sim_variables["POWER"].set(str(self.controler.sim.POWER))
        tk.Label(sim, text=u"Sklon trati [\u2030]").grid(row=1, column=9, sticky="e")
        tk.Entry(sim, width=5, textvariable=self.controler.sim_variables["SLOPE"]).grid(row=1, column=10, sticky="w")
        self.controler.sim_variables["SLOPE"].set(str(self.controler.sim.SLOPE))
        tk.Label(sim, text="Součinitel využití adheze [-]").grid(row=0, column=11, sticky="e")
        e = tk.Entry(sim, width=5, textvariable=self.controler.sim_variables["ADHESION_UTILISATION"])
        self.controler.sim_variables["ADHESION_UTILISATION"].set(str(self.controler.sim.ADHESION_UTILISATION))
        e.grid(row=0, column=12, sticky="w")
        tk.Label(sim, text="Rovnice vozidlového odporu").grid(row=0, column=13, columnspan=6)
        tk.Entry(sim, width=5, textvariable=self.controler.sim_variables["C"]).grid(row=1, column=13, sticky="e")
        self.controler.sim_variables["C"].set(str(self.controler.sim.C))
        tk.Label(sim, text="+").grid(row=1, column=14)
        tk.Entry(sim, width=8, textvariable=self.controler.sim_variables["B"]).grid(row=1, column=15)
        self.controler.sim_variables["B"].set(str(self.controler.sim.B))
        tk.Label(sim, text=u"\u00b7V+").grid(row=1, column=16)
        tk.Entry(sim, width=8, textvariable=self.controler.sim_variables["A"]).grid(row=1, column=17)
        self.controler.sim_variables["A"].set(str(self.controler.sim.A))
        tk.Label(sim, text=u"\u00b7V\u00b2").grid(row=1, column=18, sticky="w")


class ConnectPage(tk.Frame):
    """Úvodní strana UI pro připojení k CAN převodníku.
    Možno předělat na připojování k MQTT brokeru."""

    def __init__(self, parent, controller):
        tk.Frame.__init__(self, parent)
        self.controller = controller
        self.grid_rowconfigure(0, weight=1)
        self.grid_rowconfigure(10, weight=1)
        self.grid_columnconfigure(0, weight=1)
        self.grid_columnconfigure(10, weight=1)

        self.comms = [
            ("CAN", SerialComm(self.controller), None),
            ("MQTT", MqttComm(self.controller), None),
            ("Test", DummyComm(self.controller), None)
        ]

        tk.Label(self, text="Komunikace:", font=Font(family="Helvetica", size=18)).grid(row=1, column=1, sticky="ew")
        self.ntb = ttk.Notebook(self)
        self.ntb.grid(row=2, column=1)
        tk.Button(self, text="Připojit", command=self.connect).grid(row=3, column=1)

        for index, data in enumerate(self.comms):
            text, comm, pane = data
            pane = comm.get_tkinter_pane(self.ntb)
            pane.grid()
            self.ntb.add(pane, text=text, pad=5)
            self.comms[index] = (text, comm, pane)

    def connect(self):
        """Otevře hlavní okno aplikace a připojí se k CAN převodníku."""
        _, comm, pane = self.comms[self.ntb.index("current")]
        if pane.connect():
            self.controller.connect(comm)
            self.controller.mp.tkraise()


class LoggerTreeView(tk.Frame):
    """UI element pro vypisování CAN zpráv
    Možno předělat pro MQTT.

    Pro výpis očekává seznam slovníků reprezentujících jednotlivé zprávy. Viz třídu Sim.
    """

    def __init__(self, parent, comm, **kwargs):
        super().__init__(parent)
        self.comm = comm
        self._filter = "tx/rx"
        self._freeze = False
        kwargs.setdefault("show", "headings")
        kwargs.setdefault("height", 25)
        self.tw = ttk.Treeview(self, **kwargs)
        self.tw.grid(row=0, column=0, columnspan=3)
        columns = ("time", "tx/rx", "type", "id", "rtr", "data", "dec", "hex", "bin")
        headings = ("Čas", "TX/RX", "Typ", "ID", "RTR", "Data", "dec", "hex", "bin")
        widths = (100, 50, 180, 40, 30, 100, 50, 50, 150)
        self.tw.config(columns=columns)
        for column, heading, width in zip(columns, headings, widths):
            self.tw.heading(column, text=heading, anchor="w")
            self.tw.column(column, width=width)
        self.sb = tk.Scrollbar(self, orient="vertical", command=self.tw.yview)
        self.tw.config(yscrollcommand=self.sb.set)
        self.sb.grid(row=0, column=3, sticky="ns")
        self.button = tk.Button(self, text=self._filter.upper(), width=6,
                                command=lambda *_: self.toggle_filter(self.comm.log))
        self.button.grid(row=1, column=1)
        self.scroll_var = tk.BooleanVar(value=True)
        self.checkbutton = tk.Checkbutton(self, text="Auto-scroll", variable=self.scroll_var)
        self.checkbutton.grid(row=1, column=2, sticky="e")

    def toggle_filter(self, records):
        """Přepne filtr TX/RX"""
        if self._filter == "tx/rx":
            self._filter = "tx"
        elif self._filter == "tx":
            self._filter = "rx"
        else:
            self._filter = "tx/rx"
        self.button.config(text=self._filter.upper())
        self.display_filtered(records)

    def display_filtered(self, records):
        """Smaže výpis a vypíše pouze položky odpovídající filtru TX/RX"""
        self.tw.delete(*self.tw.get_children())
        for msg in records:
            if msg["tx/rx"] in self._filter:
                self.insert(msg)
        if self.scroll_var.get():
            self.update_idletasks()
            self.tw.yview_moveto(1)

    def freeze(self):
        """Pozastaví výpis"""
        self._freeze = True

    def unfreeze(self):
        """Obnoví výpis"""
        self._freeze = False
        self.display_filtered(self.comm.log)

    def insert(self, message):
        """Vloží záznam na konec seznamu"""
        if not self._freeze:
            values = (
                message["time"].strftime("%H:%M:%S.%f"),
                message["tx/rx"], message["type"], message["id"],
                "Ano" if message["rtr"] else "Ne", message["data"]
            )
            iid = self.tw.insert("", "end", values=values)
            if self.scroll_var.get():
                self.tw.yview_moveto(1)
            for b in message.get("bytes", []):
                values = (
                    "", "", "", "", "", "", b,
                    "{:#04x}".format(b),
                    "{:#010b}".format(b)
                )
                try:
                    self.tw.insert(iid, "end", values=values)
                except tk.TclError:
                    # TODO - figure the reason, why 'iid' returned by 'tw.insert' may not be found by the TreeView
                    return

    def display_record(self, message):
        """Přidá záznam na konec seznamu, pokud vyhovuje filtru TX/RX"""
        if message["tx/rx"] in self._filter:
            self.insert(message)


# noinspection PyUnusedLocal
def main(argv):
    emulator = Emulator()
    emulator.mainloop()


if __name__ == '__main__':
    import sys
    main(sys.argv)
