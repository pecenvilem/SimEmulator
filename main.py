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
import os
import datetime
import time
import threading
import json

MAX_TR_BR_APPL = 3.8    # bar # TODO: PARAM
MAX_DIR_BR_APPL = 6     # bar # TODO: PARAM
MAX_TL_PRESS = 5        # bar # TODO: PARAM

DIR = os.getcwd()
IMG = os.path.join(DIR, "img")
MAIN_ICON = os.path.join(IMG, "dsfd.ico")
COMM_CONFIG = os.path.join(DIR, "comm_config.json")
HJP = os.path.join(IMG, "hjp")


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
            self.controller.focus()
            self.load()
        except ValueError:
            msb.showerror("Neplatné zadání", "Nepodařilo se načíst parametry simulace!")
        else:
            self.controller.comm_variables["DRIVING_LEAVER"].set(3)
            self.thread = threading.Thread(target=self.run, daemon=True)
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
        speed = 0

        while self._run:
            dt = time.time() - t0
            t0 = time.time()
            if not self._pause:
                # LOAD values from input variables
                epv = self.controller.comm_variables["EP_VALVE"].get()
                etcs_brake = self.controller.comm_variables["BRAKE"].get()
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
                    # if tb_application <= 0 and bc <= 0:
                    if bc <= 0:
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
                if epv:
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
                brake += direct_brake

                # SPEED
                o_v = (self.c + self.b * abs(speed) * 3.6 + self.a * (speed * 3.6) ** 2) * self.mass / 1000 * 9.81
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
                self.controller.comm_variables["SPEED"].set(speed * 3.6)  # km/h
                self.controller.comm_variables["TRAIN_LINE_PRESSURE"].set(tl)
                self.controller.comm_variables["BRAKE_CYLINDER_PRESSURE"].set(bc)
                self.controller.sim_variables["TRACTION_TARGET"].set(traction_target / 1000)  # kN
                self.controller.sim_variables["TRACTION"].set(traction_indication / 1000)  # kN

            time.sleep(0.01)


class Comm(ABC):

    def __init__(self, controller, transmit_frq=50):
        self.controller = controller
        self._run = False
        self.paused = True
        self.log = []
        self.msg_handles = {}
        self.thread = threading.Thread(daemon=True)
        self.comm_config = {}
        self.transmit_frq = transmit_frq
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

    def __init__(self, controller, transmit_frq=50):
        super().__init__(controller, transmit_frq)

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
        self.thread = threading.Thread(target=self.run, daemon=True)
        self._run = True
        self.thread.start()

    def resume(self):
        """Obnoví odesílání zpráv"""
        self.paused = False

    def pause(self):
        """Pozastaví odesílání zpráv"""
        self.paused = True

    def stop(self):
        """Zastaví komunikační smyčku"""
        self._run = False
        if self.thread.is_alive():
            self.thread.join(timeout=0.5)

    def run(self):
        while self._run:
            time.sleep(0.2)


class DummyPane(CommPane):

    def __init__(self, parent, comm):
        super().__init__(parent)
        self.comm = comm

    def connect(self):
        """Otevře hlavní okno aplikace a připojí se k CAN převodníku."""
        return self.comm.start()


class MqttComm(Comm):

    def __init__(self, controller, transmit_frq=50):
        super().__init__(controller, transmit_frq)
        self.host = None
        self.port = None
        self.client = mqtt.Client(client_id="SimEmulator")

    def __del__(self):
        self.stop()

    def get_tkinter_pane(self, parent):
        return MqttPane(parent, self)

    def send(self, msg_type, **kwargs):
        self.client.publish(msg_type, payload=kwargs["data"])

    def config(self, config_data):
        self.comm_config = config_data

    def start(self):
        self.client.connect(self.host, self.port)
        self.client.subscribe("evc/tiu/#") # TODO - PARAM: message structure
        self.client.on_message = self.on_message
        self.thread = threading.Thread(target=self.run, daemon=True)
        self._run = True
        self.paused = False
        self.thread.start()
        return True

    def on_message(self, client, userdata, message):
        data = json.loads(message.payload.decode('ascii'))
        try:
            self.controller.comm_variables["BRAKE"].set(data["service_brake"])
            self.controller.comm_variables["EP_VALVE"].set(data["emergency_brake"])
        except KeyError:
            print("Invalid data received from EVC!")

    def run(self):
        while self._run:
            if not self.paused:
                self.client.loop()
                # TODO - PARAM: message structure
                data = json.dumps(
                    {"train_speed": self.controller.comm_variables["SPEED"].get()}
                )
                self.client.publish("odo/evc", data)
                data = json.dumps(
                    {
                        "battery_power": self.controller.comm_variables["BATTERY"].get(),
                        "cab": self.controller.comm_variables["CONTROL_SWITCH"].get(),
                        "train_direction": self.controller.comm_variables["DIRECTION_LEAVER"].get()
                    }
                )
                self.client.publish("tiu/evc", data)
                self.client.publish("btm/evc", self.controller.comm_variables["BALISE_TELEGRAM"].get())

            time.sleep(1 / self.transmit_frq)

    def resume(self):
        pass

    def pause(self):
        pass

    def stop(self):
        self._run = False
        if self.thread.is_alive():
            self.thread.join(timeout=0.5)
        self.client.disconnect()


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
            return self.comm.start()


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
            "SPEED": tk.DoubleVar(value=0),
            "DIRECTION_LEAVER": tk.IntVar(value=0),
            "BRAKE_CYLINDER_PRESSURE": tk.DoubleVar(value=6),
            "TRAIN_LINE_PRESSURE": tk.DoubleVar(value=5),
            "EP_VALVE": tk.BooleanVar(value=False),
            "BRAKE": tk.BooleanVar(value=False),
            "CONTROL_SWITCH": tk.IntVar(value=0),
            "DRIVING_LEAVER": tk.IntVar(value=3),
            "BALISE_TELEGRAM": tk.StringVar(value="{}")
        }

        # variables storing data related to the physical simulation
        self.sim_variables = {
            "TRACTION_TARGET": tk.DoubleVar(value=0),
            "TRACTION": tk.DoubleVar(value=0),
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

        # self.mp = MainPage(self.container, self)
        # self.mp.grid(row=0, column=0, sticky="nsew")
        self.mp = None
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
            self.comm.stop()
        if self.sim.thread.is_alive():
            self.sim.stop()
        self.destroy()


class MainPage(tk.Frame):
    """Hlavní okno aplikace"""

    def stop(self):
        """Zastavení komunikace a návrat na stránku pro připojení k simulátoru"""
        self.controler.comm.stop()
        self.controler.cp.tkraise()

    def compute_train_brake(self):
        """Výpočet maximální brzdné síly průběžné brzdy podle zadaného maximálního brzdného zrychlení."""
        mass = float(self.controler.sim_variables["TRAIN_MASS"].get())
        acceleration = float(self.controler.sim_variables["ACCELERATION"].get())
        self.controler.sim_variables["TRAIN_BRAKING_FORCE"].set(str(int(mass * acceleration)))

    def __init__(self, parent, controller):
        """Inicializace a definice prvků UI"""
        tk.Frame.__init__(self, parent)
        self.controler = controller
        self.grid_rowconfigure(0, weight=1)
        self.grid_rowconfigure(10, weight=1)
        self.grid_columnconfigure(0, weight=1)
        self.grid_columnconfigure(10, weight=1)

        settings = tk.LabelFrame(self, text="Přímé nastavení hodnot")
        settings.grid_rowconfigure(0, weight=1)
        settings.grid_rowconfigure(500, weight=1)
        settings.grid_columnconfigure(0, weight=1)
        settings.grid_columnconfigure(10, weight=1)
        settings.grid(row=1, column=1, sticky="nsew")

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

        driving = tk.LabelFrame(self, text="Řízení")
        driving.grid(row=1, column=2, rowspan=2, sticky="nsew")
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

        track = tk.LabelFrame(self, text="Trať")
        track.grid(row=2, column=1, sticky="nsew")
        self.track = TrackMap(track, variable=self.controler.comm_variables["BALISE_TELEGRAM"])
        self.track.grid()

        sim = tk.LabelFrame(self, text="Simulace")
        sim.grid_columnconfigure(0, weight=1)
        sim.grid_columnconfigure(30, weight=1)
        sim.grid(row=3, column=1, columnspan=3)
        # tk.Button(sim, text="Spustit", command=self.controler.sim.start, width=8).grid(row=0, column=1, sticky="e")
        # tk.Button(sim, text="Pauza", command=self.controler.sim.pause, width=8).grid(row=1, column=1, sticky="e")
        tk.Button(sim, text="Načíst", command=self.controler.sim.start).grid(row=0, column=1, rowspan=2, sticky="e")
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
            self.controller.sim.start()
            self.controller.mp.tkraise()


# noinspection PyUnusedLocal
def main(argv):
    emulator = Emulator()
    emulator.mainloop()


if __name__ == '__main__':
    import sys
    main(sys.argv)
