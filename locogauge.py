from abc import ABC, abstractmethod
from dataclasses import dataclass
from typing import Callable, Tuple, Any, Optional
import os
import tkinter as tk
import tkinter.font as tf
import numpy as np
np.seterr(all="raise")

DIR = os.getcwd()
IMG = os.path.join(DIR, "img")


class SpeedGauge(tk.Frame):
    """Rychloměr

    Zobrazení rychlosti je provedeno voláním metody 'speed' s požadovanou hodnotou jako argument.
    Také lze při inicializaci předat jako keyword argument 'variable' tkinterovskou proměnou,
    jejiž hodnota je vždy zobrazena."""

    def __init__(self, parent, *args, **kwargs):

        if var := kwargs.pop("variable", None):
            var.trace("w", lambda *_: self.speed(var.get()))
        self.size = kwargs.pop("size", 300)
        max_ = kwargs.pop("max_", None)
        q = self.size / 300
        self.dial_center = 30 * q
        self.dial_outer = 130 * q
        self.major_mark = 20 * q
        self.minor_mark = 14 * q
        self.needle_offset = self.dial_center * 0.9
        self.needle_tip = 105 * q
        self.needle_base = 85 * q
        self.base_width = 10 * q / 2
        self.tip_width = 2 * q / 2
        self.label_ring = 95 * q

        self.vertices = np.array([
            [self.needle_offset, self.base_width, 1],
            [self.needle_base, self.base_width, 1],
            [self.needle_base + self.base_width - self.tip_width, self.tip_width, 1],
            [self.needle_tip, self.tip_width, 1],
            [self.needle_tip, -self.tip_width, 1],
            [self.needle_base + self.base_width - self.tip_width, -self.tip_width, 1],
            [self.needle_base, -self.base_width, 1],
            [self.needle_offset, -self.base_width, 1],
        ])

        super().__init__(parent, *args, **kwargs)
        self.canvas = tk.Canvas(self, bg="black", width=self.size, height=self.size)
        self.canvas.grid()

        self.label_font = tf.Font(self, family="Gischa", size=int(-14 * q), weight="bold")
        self.speed_font = tf.Font(self, family="Gischa", size=int(-22 * q), weight="bold")
        self.unit_font = tf.Font(self, family="Gischa", size=int(-11 * q), weight="normal")

        x1 = y1 = self.size/2 - self.dial_center
        x2 = y2 = self.size/2 + self.dial_center
        self.canvas.create_oval((x1, y1), (x2, y2), fill="white")
        self.canvas.create_text(self.size/2, self.size/2 - 50 * q,
                                text="km/h", fill="white", font=self.unit_font)
        self.text = self.canvas.create_text(self.size/2, self.size/2, text="0", fill="black", font=self.speed_font)
        extent = 270
        n = 47
        for i in range(n):
            angle = np.deg2rad(225 - extent / (n-1) * i)
            x1 = np.cos(angle) * self.dial_outer + self.size / 2
            y1 = -np.sin(angle) * self.dial_outer + self.size / 2
            if i % 4 == 0:
                width = 4 * q
                x2 = np.cos(angle) * (self.dial_outer - self.major_mark) + self.size / 2
                y2 = -np.sin(angle) * (self.dial_outer - self.major_mark) + self.size / 2
                tx = np.cos(angle) * self.label_ring + self.size / 2
                ty = -np.sin(angle) * self.label_ring + self.size / 2
                self.canvas.create_text(tx, ty, text=f"{i//4*20}", fill="white", font=self.label_font)
            else:
                width = 2 * q
                x2 = np.cos(angle) * (self.dial_outer - self.minor_mark) + self.size / 2
                y2 = -np.sin(angle) * (self.dial_outer - self.minor_mark) + self.size / 2
            self.canvas.create_line(x1, y1, x2, y2, fill="white", width=int(width))
        self.needle = self.canvas.create_polygon(self.transform(np.deg2rad(-225)), fill="white")
        if max_ is not None:
            angle = np.deg2rad(225 - extent / 230 * max_)
            x1 = np.cos(angle) * self.dial_outer + self.size / 2
            y1 = -np.sin(angle) * self.dial_outer + self.size / 2
            x2 = np.cos(angle) * (self.dial_outer - self.major_mark) + self.size / 2
            y2 = -np.sin(angle) * (self.dial_outer - self.major_mark) + self.size / 2
            self.canvas.create_line(x1, y1, x2, y2, fill="red", width=5*q)

    def transform(self, angle):
        matrix = np.array([
            [np.cos(angle), -np.sin(angle), self.size / 2],
            [np.sin(angle), np.cos(angle), self.size / 2],
            [0, 0, 1]
        ])
        transformed_vertices = (np.delete(matrix@vertex.T, 2).astype(int) for vertex in self.vertices)
        return [tuple(vertex) for vertex in transformed_vertices]

    def speed(self, value):
        try:
            self.canvas.itemconfigure(self.text, text=str(int(value)))
        except ValueError as e:
            raise ValueError(f"Can't display passed {type(value)} on SpeedGauge!") from e
        self.canvas.delete(self.needle)
        angle = np.deg2rad(abs(value) / 230 * 270 - 225)
        self.needle = self.canvas.create_polygon(self.transform(angle), fill="white")


class TractiveEffortGauge(tk.Frame):
    """Ukazatel tahu a brzdné síly elektrodynamické brzdy.

    Aktuální hodnota tažné síly je označena "tractive_effort", aktuální nastavená cílová hodnota je nazvána "target".
    Kladné hodnoty představují tah, záporné hodnoty brzdění.

    Zobrazení hodnot je provedeno voláním metod 'tractive_effort' a 'target's požadovanou hodnotou jako argument.
    Také lze při inicializaci předat jako keyword argumenty 'traction_variable' a target_variable tkinterovskou proměné,
    jejichž hodnota je vždy zobrazena."""

    max_brake = 150
    max_traction = 300

    def __init__(self, parent, *args, **kwargs):
        if var := kwargs.pop("traction_variable", None):
            var.trace("w", lambda *_, v=var: self.tractive_effort(v.get()))
        if var := kwargs.pop("target_variable", None):
            var.trace("w", lambda *_, v=var: self.target(v.get()))
        if var := kwargs.pop("relative_effort_variable", None):
            var.trace("w", lambda *_, v=var: self.relative_effort(v.get()))
        if var := kwargs.pop("show_relative_effort_variable", None):
            var.trace("w", lambda *_, v=var: self.relative_effort_display(v.get()))
        self.size = kwargs.pop("size", 300)
        super().__init__(parent, *args, **kwargs)
        self.canvas = tk.Canvas(self, bg="black", width=self.size, height=self.size)
        self.canvas.grid()

        q = self.size / 300
        self.outer_ring = 115 * q
        self.inner_ring = 85 * q
        self.label_ring = 70 * q
        self.major_tick = 3 * q
        self.minor_tick = 1 * q
        self.label_font = tf.Font(self, family="Gischa", size=int(-12 * q), weight="bold")
        self.effort_font = tf.Font(self, family="Gischa", size=int(-20 * q), weight="bold")
        self.unit_font = tf.Font(self, family="Gischa", size=int(-11 * q), weight="normal")
        self.relative_effort_font = tf.Font(self, family="Gischa", size=int(-24 * q), weight="bold")
        self.text_box_width = 80 * q
        self.text_box_height = 30 * q
        self.sep_bar_position = 0.7

        self.vertices = np.array([
            [self.size / 2, self.size / 2 - self.outer_ring, 1],
            [self.size / 2 - 10 * q, self.size / 2 - self.outer_ring - 10 * q, 1],
            [self.size / 2 + 10 * q, self.size / 2 - self.outer_ring - 10 * q, 1]
        ])

        extent = 300
        x1 = y1 = self.size / 2 - self.outer_ring
        x2 = y2 = self.size / 2 + self.outer_ring
        self.canvas.create_arc(x1, y1, x2, y2, fill="gray", style="pieslice", start=300, extent=extent)
        self.brake = self.canvas.create_arc(x1, y1, x2, y2, start=90, extent=0, fill="yellow")
        self.traction = self.canvas.create_arc(x1, y1, x2, y2, start=90, extent=0, fill="blue")
        x1 = x2 = self.size / 2
        y1 = self.size - 12 * q
        y2 = self.size - 70 * q
        self.canvas.create_line(x1, y1, x2, y2, width=int(5 * q), fill="white", tag="middle_line")
        x1 = y1 = self.size / 2 - self.inner_ring
        x2 = y2 = self.size / 2 + self.inner_ring
        self.canvas.create_oval(x1, y1, x2, y2, fill="black")
        self.canvas.create_text(self.size / 2, self.size / 2 - 30 * q, text="kN", fill="white", font=self.unit_font)
        self.canvas.create_text(self.size / 2 - 15 * q, self.size - 12 * q, text="Brzda", fill="white",
                                font=self.unit_font, anchor="e")
        self.canvas.create_text(self.size / 2 + 15 * q, self.size - 12 * q, text="Celkový tah", fill="white",
                                font=self.unit_font, anchor="w")
        self.text = self.canvas.create_text(self.size / 2, self.size / 2, text="0", fill="white", font=self.effort_font)
        self.target_indicator = self.canvas.create_polygon(self.transform(np.deg2rad(0)), fill="blue")
        x1 = (self.size - self.text_box_width) / 2
        y1 = (self.size + self.outer_ring - self.inner_ring - self.text_box_height) / 2 + self.inner_ring - 10 * q
        x2 = (self.size + self.text_box_width) / 2
        y2 = (self.size + self.outer_ring - self.inner_ring + self.text_box_height) / 2 + self.inner_ring + 5 * q
        self.canvas.create_rectangle(x1, y1, x2, y2, fill="black", tag="relative_effort_cover")
        y1 = (self.size + self.outer_ring - self.inner_ring - self.text_box_height) / 2 + self.inner_ring
        y2 = (self.size + self.outer_ring - self.inner_ring + self.text_box_height) / 2 + self.inner_ring
        self.canvas.create_rectangle(x1, y1, x2, y2, fill="gray", tag="relative_effort")
        x = (self.size - self.text_box_width) / 2 + self.text_box_width * self.sep_bar_position
        self.canvas.create_line(x, y1, x, y2, width=self.minor_tick, fill="black", tag="relative_effort")
        x = (self.size - self.text_box_width) / 2 + self.text_box_width * (self.sep_bar_position + 1) / 2
        y = (self.size + self.outer_ring - self.inner_ring) / 2 + self.inner_ring
        self.canvas.create_text(x, y, text="%", font=self.relative_effort_font, tag="relative_effort")
        x = (self.size - self.text_box_width) / 2 + self.text_box_width * self.sep_bar_position / 2
        y = (self.size + self.outer_ring - self.inner_ring) / 2 + self.inner_ring
        self.relative_effort_text = self.canvas.create_text(x, y, text="0",
                                                            font=self.relative_effort_font,
                                                            tag=("relative_effort_text", "relative_effort"))

        n = 25
        values = [25 * i for i in range(self.max_brake // 25, 0, -1)]
        values += [50 * i for i in range(self.max_traction // 50 + 1)]
        for i in range(n):
            angle = np.deg2rad(240 - extent * i / (n-1))
            if i % 2 == 0:
                width = self.major_tick
                tx = np.cos(angle) * self.label_ring + self.size / 2
                ty = -np.sin(angle) * self.label_ring + self.size / 2
                self.canvas.create_text(tx, ty, text=f"{values[i // 2]}", fill="white", font=self.label_font)
            else:
                width = self.minor_tick
            x1 = np.cos(angle) * self.outer_ring + self.size / 2
            y1 = -np.sin(angle) * self.outer_ring + self.size / 2
            x2 = np.cos(angle) * self.inner_ring + self.size / 2
            y2 = -np.sin(angle) * self.inner_ring + self.size / 2
            self.canvas.create_line(x1, y1, x2, y2, width=width, fill="black")

    def transform(self, angle):
        pivot_to_origin = np.array([
            [1, 0, -self.size / 2],
            [0, 1, -self.size / 2],
            [0, 0, 1]
        ])
        rotate = np.array([
            [np.cos(angle), -np.sin(angle), 0],
            [np.sin(angle), np.cos(angle), 0],
            [0, 0, 1]
        ])
        pivot_to_centre = np.array([
            [1, 0, self.size / 2],
            [0, 1, self.size / 2],
            [0, 0, 1]
        ])
        matrix = pivot_to_centre @ rotate @ pivot_to_origin
        transformed_vertices = (np.delete(matrix@vertex.T, 2).astype(int) for vertex in self.vertices)
        return [tuple(vertex) for vertex in transformed_vertices]

    def tractive_effort(self, value):
        try:
            int(value)
        except ValueError as e:
            raise ValueError(f"Can't display passed {type(value)} on TractiveEffortGauge!") from e
        if value >= 0:
            angle = value * 150 / self.max_traction
            self.canvas.itemconfigure(self.brake, extent=0)
            self.canvas.itemconfigure(self.traction, extent=-angle)
        else:
            angle = value * 150 / self.max_brake
            self.canvas.itemconfigure(self.traction, extent=0)
            self.canvas.itemconfigure(self.brake, extent=-angle)
        self.canvas.itemconfigure(self.text, text=str(abs(int(value))))

    def target(self, value):
        try:
            int(value)
        except ValueError as e:
            raise ValueError(f"Can't display passed {type(value)} on TractiveEffortGauge!") from e
        if value >= 0:
            angle = np.deg2rad(value * 150 / self.max_traction)
            fill = "blue"
        else:
            angle = np.deg2rad(value * 150 / self.max_brake)
            fill = "yellow"
        self.canvas.delete(self.target_indicator)
        self.target_indicator = self.canvas.create_polygon(self.transform(angle), fill=fill)

    def relative_effort(self, value):
        try:
            s = str(int(value * 100))
        except ValueError as e:
            raise ValueError(f"Can't display passed {type(value)} on TractiveEffortGauge!") from e
        self.canvas.itemconfigure('relative_effort_text', text=s)

    def relative_effort_display(self, value):
        if value:
            self.canvas.tag_lower('relative_effort_cover', 'relative_effort')
            self.canvas.tag_lower('middle_line', 'relative_effort_cover')
        else:
            self.canvas.tag_raise('relative_effort_cover', 'relative_effort')
            self.canvas.tag_raise('middle_line', 'relative_effort_cover')


class PressureGauge(tk.Frame):
    """Tlakoměr
    Lze zobrazovat dvě hodnoty tlaku (primární, sekundání), barvu ručiček, rozsah stupnice a pozici značky na stupnici
    (např. maximální tlak pro danou veličinu).

    API je obdobné jako pro SpeedGauge a TractiveEffortGauge.
    """

    def __init__(self, parent, *args, **kwargs):
        if var := kwargs.pop("primary_variable", None):
            var.trace("w", lambda *_, v=var: self.primary(v.get()))
        if var := kwargs.pop("secondary_variable", None):
            var.trace("w", lambda *_, v=var: self.secondary(v.get()))
        self.size = kwargs.pop("size", 300)
        self.max_ = kwargs.pop("max_", 12)
        self.primary_color = kwargs.pop("primary", "black")
        self.secondary_color = kwargs.pop("secondary", None)
        super().__init__(parent, *args, **kwargs)
        self.canvas = tk.Canvas(self, width=self.size, height=self.size)
        self.canvas.grid()

        q = self.size / 300
        self.outer_ring = 135 * q
        self.inner_ring = 105 * q
        self.tick_ring = 100 * q
        self.minor_tick = 85 * q
        self.major_tick = 70 * q
        self.label_ring = 60 * q
        self.font = tf.Font(self, family="Haettenschweiler", size=int(-14 * q), weight="normal")

        self.vertices = np.array([
            [95 * q, 0.5 * q, 1],
            [95 * q, 0.5 * q, 1],
            [-16.89 * q, 4.95 * q, 1],
            [-25.73 * q, 7.60 * q, 1],
            [-33.77 * q, 11.40 * q, 1],
            [-38.18 * q, 10.61 * q, 1],
            [-40 * q, 0, 1]
        ])
        arr = np.flip(self.vertices.copy(), 0)
        arr[:, 1] *= -1
        self.vertices = np.concatenate((self.vertices, arr), 0)

        x1 = y1 = self.size / 2 - self.outer_ring
        x2 = y2 = self.size / 2 + self.outer_ring
        self.canvas.create_oval(x1, y1, x2, y2, fill="black")
        x1 = y1 = self.size / 2 - self.inner_ring
        x2 = y2 = self.size / 2 + self.inner_ring
        self.canvas.create_oval(x1, y1, x2, y2, fill="white")
        x1, y1 = self.size / 2, self.size / 2 + 75 * q
        self.canvas.create_text(x1, y1, text="bar", fill="black", font=self.font)

        self.extent = 270
        n = self.max_ * 5 + 1
        for i in range(n):
            angle = np.deg2rad(225 - self.extent / (n-1) * i)
            x1 = np.cos(angle) * self.tick_ring + self.size / 2
            y1 = -np.sin(angle) * self.tick_ring + self.size / 2
            if i % 5 == 0:
                width = 3 * q
                x2 = np.cos(angle) * self.major_tick + self.size / 2
                y2 = -np.sin(angle) * self.major_tick + self.size / 2
                tx = np.cos(angle) * self.label_ring + self.size / 2
                ty = -np.sin(angle) * self.label_ring + self.size / 2
                self.canvas.create_text(tx, ty, text=f"{i//5}", fill="black", font=self.font)
            else:
                width = 2 * q
                x2 = np.cos(angle) * self.minor_tick + self.size / 2
                y2 = -np.sin(angle) * self.minor_tick + self.size / 2
            self.canvas.create_line(x1, y1, x2, y2, fill="black", width=int(width))

        x1 = y1 = self.size / 2 - 10 * q
        x2 = y2 = self.size / 2 + 10 * q
        self.canvas.create_oval(x1, y1, x2, y2, fill=self.primary_color, tag="primary")
        self.primary_needle = self.canvas.create_polygon(self.transform(np.deg2rad(-225)),
                                                         fill=self.primary_color, tag="primary")
        if self.secondary_color:
            self.secondary_needle = self.canvas.create_polygon(self.transform(np.deg2rad(-225)),
                                                               fill=self.secondary_color, tag="secondary")
        self.canvas.tag_lower("secondary", "primary")

    def transform(self, angle):
        matrix = np.array([
            [np.cos(angle), -np.sin(angle), self.size / 2],
            [np.sin(angle), np.cos(angle), self.size / 2],
            [0, 0, 1]
        ])
        transformed_vertices = (np.delete(matrix@vertex.T, 2).astype(int) for vertex in self.vertices)
        return [tuple(vertex) for vertex in transformed_vertices]

    def primary(self, value):
        try:
            float(value)
        except ValueError as e:
            raise ValueError(f"Can't display passed {type(value)} on PressureGauge!") from e
        self.canvas.delete(self.primary_needle)
        angle = np.deg2rad(value / self.max_ * 270 - 225)
        self.primary_needle = self.canvas.create_polygon(self.transform(angle),
                                                         fill=self.primary_color, tag="primary")
        self.canvas.tag_lower("secondary", "primary")

    def secondary(self, value):
        try:
            float(value)
        except ValueError as e:
            raise ValueError(f"Can't display passed {type(value)} on PressureGauge!") from e
        if self.secondary_color:
            self.canvas.delete(self.secondary_needle)
            angle = np.deg2rad(value / self.max_ * 270 - 225)
            self.secondary_needle = self.canvas.create_polygon(self.transform(angle),
                                                               fill=self.secondary_color, tag="secondary")
            self.canvas.tag_lower("secondary", "primary")

    def create_mark(self, value, color="primary"):
        if color == "primary":
            color = self.primary_color
        elif color == "secondary":
            if (color := self.secondary_color) is None:
                raise ValueError("No secondary color defined!")
        angle = np.deg2rad(225 - self.extent * value / self.max_)
        x1 = np.cos(angle) * self.tick_ring + self.size / 2
        y1 = -np.sin(angle) * self.tick_ring + self.size / 2
        x2 = np.cos(angle) * self.major_tick + self.size / 2
        y2 = -np.sin(angle) * self.major_tick + self.size / 2
        return self.canvas.create_line(x1, y1, x2, y2, fill=color, width=int(3 * self.size / 300))

    def delete_mark(self, mark):
        try:
            self.canvas.delete(mark)
        except ValueError as e:
            raise ValueError("Given mark doesn't exist on the Gauge!") from e


class ControlLeaver(tk.Frame):
    """Hlavní řídící páka

    Ovládá brzdu a jízdu vlaku. Chování lokomotivy při dané poloze páky řeší objekt Sim."""

    leaver_width = 65
    leaver_height = 25

    def __init__(self, parent, *args, **kwargs):
        try:
            path = kwargs.pop("img_path")
        except IndexError as e:
            raise ValueError("Path to image resources for ControllLeaver not given!") from e
        self.variable = kwargs.pop("variable", tk.IntVar())
        self.variable_trace_id = self.variable.trace("w", lambda *_: self.set(self.variable.get()))
        super().__init__(parent, *args, **kwargs)
        self.souhlas = tk.PhotoImage(file=os.path.join(path, "souhlas.gif"))
        self.jizda = tk.PhotoImage(file=os.path.join(path, "jizda.gif"))
        self.vybeh = tk.PhotoImage(file=os.path.join(path, "vybeh.gif"))
        self.be = tk.PhotoImage(file=os.path.join(path, "be.gif"))
        self.bp = tk.PhotoImage(file=os.path.join(path, "bp.gif"))
        self.r = tk.PhotoImage(file=os.path.join(path, "r.gif"))
        self.canvas = tk.Canvas(self, width=200, height=300)
        self.canvas.grid()
        self.canvas.create_image((25, 25), anchor="center", image=self.souhlas)
        self.canvas.create_image((25, 75), anchor="center", image=self.jizda)
        self.canvas.create_image((25, 125), anchor="center", image=self.vybeh)
        self.canvas.create_image((25, 175), anchor="center", image=self.be)
        self.canvas.create_image((25, 225), anchor="center", image=self.bp)
        self.canvas.create_image((25, 275), anchor="center", image=self.r)
        self.canvas.create_rectangle((85, 15), (105, 285), fill="silver", outline="gray")
        self.canvas.create_text((140, 25), anchor="w", text="<PgDn>", fill="gray")
        self.canvas.create_text((140, 75), anchor="w", text="<Num *>", fill="gray")
        self.canvas.create_text((140, 125), anchor="w", text="<Num 9>", fill="gray")
        self.canvas.create_text((140, 175), anchor="w", text="<Num 6>", fill="gray")
        self.canvas.create_text((140, 225), anchor="w", text="<Num 3>", fill="gray")
        self.canvas.create_text((140, 275), anchor="w", text="<Num .>", fill="gray")
        self.leaver_position = 0.6
        self.drag_target = self.leaver_position
        self.leaver = self.draw_leaver(self.leaver_position)
        self.drag_info = {"x": 0, "y": 0, "active": False}
        self.key_pressed = None
        self.canvas.tag_bind("leaver", "<ButtonPress-1>", self.mark)
        self.canvas.bind("<B1-Motion>", self.drag)
        self.canvas.bind("<ButtonRelease-1>", self.release)
        self.canvas.bind_all("<Any-KeyPress>", self.key_down)
        self.canvas.bind_all("<Any-KeyRelease>", self.key_up)

    def draw_leaver(self, position):
        position = 25 + (1 - position) * 250
        x1, y1 = (95 - self.leaver_width / 2, position - self.leaver_height / 2)
        x2, y2 = (95 + self.leaver_width / 2, position + self.leaver_height / 2)
        return self.canvas.create_rectangle(x1, y1, x2, y2, fill="black", tag="leaver")

    def set_leaver(self, position):
        self.canvas.delete("leaver")
        self.draw_leaver(position)

    def mark(self, event):
        self.drag_info["x"] = event.x
        self.drag_info["y"] = event.y
        self.drag_info["active"] = True
        self.drag_target = self.leaver_position
        self.after(10, self.move)

    def key_down(self, event):
        if not self.drag_info["active"]:
            self.drag_info["active"] = True
            if event.keysym == "Next":
                self.drag_target = 1
            elif event.keysym == "asterisk":
                self.drag_target = 0.8
            elif event.keysym == "9":
                self.drag_target = 0.6
            elif event.keysym == "6":
                self.drag_target = 0.4
            elif event.keysym == "3":
                self.drag_target = 0.2
            elif event.keysym == "period":
                self.drag_target = 0
            self.after(10, self.move)

    def key_up(self, *_):
        self.drag_target = self.leaver_position
        self.release()

    def release(self, *_):
        if self.drag_target >= 0.7:
            self.drag_target = 0.8
        elif self.drag_target >= 0.5:
            self.drag_target = 0.6
        elif 0.15 < self.drag_target < 0.5:
            self.drag_target = 0.6
        else:
            self.drag_target = 0
        self.drag_info["active"] = False

    def drag(self, event):
        if self.drag_info["active"]:
            trg = 1 - (event.y - 25) / 250
            if trg < 0:
                trg = 0
            elif trg > 1:
                trg = 1
            else:
                self.drag_info["x"] = event.x
                self.drag_info["y"] = event.y
            self.drag_target = trg

    def move(self):
        speed = 3
        dt = 0.01
        if self.leaver_position > self.drag_target:
            self.leaver_position = max(self.drag_target, self.leaver_position - speed * dt)
        elif self.leaver_position < self.drag_target:
            self.leaver_position = min(self.drag_target, self.leaver_position + speed * dt)
        else:
            if not self.drag_info["active"]:
                return
        position = 25 + (1 - self.leaver_position) * 250
        x1, y1 = (95 - self.leaver_width / 2, position - self.leaver_height / 2)
        x2, y2 = (95 + self.leaver_width / 2, position + self.leaver_height / 2)
        self.canvas.coords("leaver", x1, y1, x2, y2)
        if self.variable.get() != self.get():
            self.variable.trace_remove("write", self.variable_trace_id)
            self.variable.set(self.get())
            self.variable_trace_id = self.variable.trace("w", lambda *_: self.set(self.variable.get()))
        self.after(10, self.move)

    def get(self):
        return int((self.leaver_position + 0.1) / 0.2)

    def set(self, value):
        self.drag_target = value * 0.2
        self.leaver_position = value * 0.2
        self.set_leaver(self.leaver_position)


@dataclass
class SwitchPosition:
    """Holds information about a position of a switch. Can be used with any 'Switch', but 'position' must be given in
    degrees for 'RotarySwitch' and in -1 to 1 float for 'LeaverSwitch'."""
    position: float
    value: Any
    label: str = ""
    momentary: bool = False


class Switch(ABC, tk.Frame):
    """Abstract class for rotary as well as leaver switch GUI elements based on real designs used in locomotives."""

    @abstractmethod
    def __init__(self, parent, *args, **kwargs):
        try:
            self.notches = kwargs.pop("notches")
        except IndexError:
            raise ValueError("Missing 'notches' in a Switch initializer!")
        self.variable = kwargs.pop("variable", tk.DoubleVar())
        self.variable_trace_id = self.variable.trace("w", lambda *_: self.set(self.variable.get()))
        self.color = kwargs.pop("color", "black")
        default = kwargs.pop("default", SwitchPosition(position=0, value=0))
        self.position = default.position
        self.notch = default
        self.block = kwargs.pop("block", None)
        self.size = kwargs.pop("size", 200)
        super().__init__(parent, *args, **kwargs)
        self.graphic = None
        self.canvas = tk.Canvas(self, width=self.size, height=self.size)
        self.canvas.grid()
        self.drag_info = {"mark": np.zeros(2, int),
                          "center": np.array([self.size / 2, self.size / 2]),
                          "active": False}
        self.canvas.tag_bind("graphic", "<ButtonPress-1>", self.mark)
        self.canvas.bind("<B1-Motion>", self.drag)
        self.canvas.bind("<ButtonRelease-1>", self.release)

        self.q = self.size / 200
        self.label_font = tf.Font(self, family="Gischa", size=int(-20 * self.q), weight="bold")

        top_left = (self.size / 2 + self.q * 70, self.size / 2 + self.q * 70)
        bottom_right = (self.size / 2 - self.q * 70, self.size / 2 - self.q * 70)
        self.canvas.create_oval(top_left, bottom_right, fill="silver", width=0)
        top_left = (self.size / 2 + self.q * 45, self.size / 2 + self.q * 45)
        bottom_right = (self.size / 2 - self.q * 45, self.size / 2 - self.q * 45)
        self.canvas.create_oval(top_left, bottom_right, fill="black", width=0)

    @abstractmethod
    def transform(self, value) -> Tuple[Tuple[Callable[[Any], Any], ...], Tuple[Any, ...]]:
        pass

    @abstractmethod
    def drag(self, event):
        pass

    @abstractmethod
    def pos2notch(self, position, exclude_momentary=False):
        pass

    def mark(self, event):
        self.drag_info["mark"] = np.array([event.x, event.y], int)
        self.drag_info["active"] = True

    def release(self, *_):
        self.notch = self.pos2notch(self.position, True)
        self.position = self.notch.position
        self.draw(self.position)

    def draw(self, position):
        self.canvas.delete("graphic")
        for renderer, element in self.transform(position):
            renderer(*element, fill=self.color, tag="graphic", outline="gray")

    def set_variable_value(self, value):
        self.variable.trace_remove("write", self.variable_trace_id)
        self.variable.set(value)
        self.variable_trace_id = self.variable.trace("w", lambda *_: self.set(self.variable.get()))

    def set(self, value):
        for notch in self.notches:
            if notch.value == value:
                self.notch = notch
                self.position = notch.position
                self.draw(self.position)
                return


class RotarySwitch(Switch):

    @staticmethod
    def circle_distance(a, b):
        a, b = (a, b) if a <= b else (b, a)
        return min(b - a, a + 360 - b)

    @staticmethod
    def in_arc(start, end, value):
        if start > end:
            return not end < value < start
        else:
            return start <= value <= end

    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.vertices = np.array([
            [-60 * self.q, 0, 1],
            [-45 * self.q, 12 * self.q, 1],
            [80 * self.q, 12 * self.q, 1],
            [80 * self.q, -12 * self.q, 1],
            [-45 * self.q, -12 * self.q, 1]
        ])
        for pos in self.notches:
            pos.position %= 360
        for notch in self.notches:
            x, y = np.sin(np.deg2rad(notch.position)) * self.q * 85, -np.cos(np.deg2rad(notch.position)) * self.q * 85
            x, y = x + self.size / 2, y + self.size / 2
            self.canvas.create_text(x, y, text=notch.label, font=self.label_font)
        if self.block is not None:
            from_, to = self.block
            self.block = (from_ % 360, to % 360)
        self.draw(self.position)

    def transform(self, value):
        matrix = np.array([
            [np.cos(np.deg2rad(90 + value)), -np.sin(np.deg2rad(90 + value)), self.size / 2],
            [np.sin(np.deg2rad(90 + value)), np.cos(np.deg2rad(90 + value)), self.size / 2],
            [0, 0, 1]
        ])
        transformed_vertices = (np.delete(matrix @ vertex.T, 2).astype(int) for vertex in self.vertices)
        render_info = [(self.canvas.create_polygon, [tuple(vertex) for vertex in transformed_vertices])]
        return render_info

    def drag(self, event):
        if not self.drag_info["active"]:
            return
        trg = np.array([event.x, event.y])
        v0 = self.drag_info["mark"] - self.drag_info["center"]
        v1 = trg - self.drag_info["center"]
        self.drag_info["mark"] = trg
        dot = np.dot(v0, v1)
        if dot != 0:
            angle = np.rad2deg(np.arccos(dot / np.linalg.norm(v1) / np.linalg.norm(v0)))
            if np.cross(v0, v1) < 0:
                angle *= -1
            trg_pos = (self.position + angle) % 360
            if self.block is not None:
                from_, to = self.block
                if angle >= 0:
                    self.position = from_ if RotarySwitch.in_arc(self.position, trg_pos, from_) else trg_pos
                else:
                    self.position = to if RotarySwitch.in_arc(trg_pos, self.position, to) else trg_pos
        if self.pos2notch(self.position) != self.notch:
            self.notch = self.pos2notch(self.position)
            self.set_variable_value(self.notch.value)
        self.draw(self.position)

    def pos2notch(self, position, exclude_momentary=False):
        nearest = None
        distance = float('inf')
        for notch in self.notches:
            if exclude_momentary and notch.momentary:
                continue
            if RotarySwitch.circle_distance(notch.position, position) <= distance:
                distance = RotarySwitch.circle_distance(notch.position, position)
                nearest = notch
        return nearest


class LeaverSwitch(Switch):

    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.head_height = kwargs.pop("head_height", 50)
        self.head_width = kwargs.pop("head_width", 60)
        self.vertices = np.array([
            [- self.head_width / 2 * self.q, - self.head_height / 2 * self.q, 1],
            [self.head_width / 2 * self.q, self.head_height / 2 * self.q, 1]
        ])
        for notch in self.notches:
            x, y = self.size / 2 + self.q * 85, self.pos2canvas(notch.position)
            self.canvas.create_text(x, y, text=notch.label, font=self.label_font)
        self.draw(self.position)

    def transform(self, value):
        matrix = np.array([
            [np.cos(0), -np.sin(0), self.size / 2],
            [np.sin(0), np.cos(0), self.pos2canvas(self.position)],
            [0, 0, 1]
        ])
        # POLE for the leaver
        pole_vertices = (
            (self.size / 2 - self.q * 20, self.size / 2),
            (self.size / 2 + self.q * 20, self.size * (1 - value) / 2)
        )
        # leaver's HEAD
        head_vertices = (np.delete(matrix @ vertex.T, 2).astype(int) for vertex in self.vertices)
        render_info = [
            (self.canvas.create_rectangle, pole_vertices),
            (self.canvas.create_rectangle, [tuple(vertex) for vertex in head_vertices])
        ]
        return render_info

    def drag(self, event):
        if not self.drag_info["active"]:
            return
        _, y = self.drag_info["mark"]
        self.drag_info["mark"] = np.array([event.x, event.y])
        _min, _max = self.q * self.head_height / 2, self.size - self.q * self.head_height / 2
        delta = event.y - y
        coord = self.pos2canvas(self.position)
        coord = max(_min, min(_max, coord + delta))
        position = self.canvas2pos(coord)
        if self.block is not None:
            _from, to = self.block
            if _from < position < to:
                position = self.position
        self.position = position
        if self.pos2notch(self.position) != self.notch:
            self.notch = self.pos2notch(self.position)
            self.set_variable_value(self.notch.value)
        self.draw(self.position)

    def pos2notch(self, position, exclude_momentary=False):
        nearest = None
        distance = float('inf')
        for notch in self.notches:
            if exclude_momentary and notch.momentary:
                continue
            if abs(notch.position - position) <= distance:
                distance = abs(notch.position - position)
                nearest = notch
        return nearest

    def canvas2pos(self, y_coord):
        return (2 * y_coord - self.size) / (self.head_height * self.q - self.size)

    def pos2canvas(self, position):
        return (self.size + (self.head_height * self.q - self.size) * position) / 2


@dataclass
class Key:
    key_code: int
    name: str
    led: tuple
    box: tuple
    color: str
    box_cnv_id: int = None
    led_cnv_id: int = None


def init_keypad_class(cls):
    cls.generate_keys()
    return cls


@init_keypad_class
class KeyPad(tk.Frame):

    @classmethod
    def generate_keys(cls):
        led_x = [46, 82, 119, 155, 192, 245, 299, 335, 372, 408, 444, 481]
        led_y = [54, 99, 144, 189]
        rows = [
            (49, 80), (94, 125), (139, 169), (184, 214)
        ]
        columns = [
            (41, 71), (78, 107), (114, 143), (151, 180), (178, 216), (240, 270), (294, 323), (330, 359),
            (367, 396), (403, 432), (440, 469), (476, 505)
        ]
        names = [
            "priv_a", "rz_a", "f1", "f2", "f3", "p+", "kpj", "160", "170", "180", "190", "200",
            "priv_b", "rz_b", "-0.5", "+0.5", "ojv", "p-", "+", "110", "120", "130", "140", "150",
            "stuj", "opak", "ocek", "vy", "vo", "f+", "-", "60", "70", "80", "90", "100",
            "n40", "n60", "n80", "n100", "bo", "f-", "0", "10", "20", "30", "40", "50"
        ]
        colors = [
            "red", "red", "yellow", "yellow", "yellow", "yellow",
            "yellow", "light green", "light green", "light green", "light green", "light green",
            "red", "red", "yellow", "yellow", "light green", "yellow",
            "yellow", "light green", "light green", "light green", "light green", "light green",
            "red", "yellow", "yellow", "yellow", "light green", "yellow",
            "yellow", "light green", "light green", "light green", "light green", "light green",
            "yellow", "yellow", "yellow", "yellow", "light green", "yellow",
            "light green", "light green", "light green", "light green", "light green", "light green",

        ]
        nc = len(columns)
        boxes = []
        for i in range(len(names)):
            boxes.append(((columns[i % nc][0], rows[i // nc][0]), (columns[i % nc][1], rows[i // nc][1])))
        leds = []
        for i in range(len(names)):
            leds.append((led_x[i % nc], led_y[i // nc]))
        cls.keys = [Key(i, n, l, b, c) for i, n, l, b, c in zip(range(len(names)), names, leds, boxes, colors)]

    def __init__(self, parent, *args, **kwargs):
        try:
            filename = kwargs.pop("filename")
        except IndexError as e:
            raise ValueError("Path to image resource for KeyPad not given!") from e
        super().__init__(parent, *args, **kwargs)
        width = 600
        height = 256
        self.canvas = tk.Canvas(self, width=width, height=height)
        self.canvas.grid()
        self.image = tk.PhotoImage(file=filename)
        self.canvas.create_image(0, 0, anchor="nw", image=self.image)
        self.keys = []
        for key in KeyPad.keys:
            key.box_cnv_id = self.canvas.create_rectangle(key.box, width=0, tag="button")
            x, y = key.led
            key.led_cnv_id = self.canvas.create_oval(x-3, y-3, x+3, y+3, fill=key.color,
                                                     width=0, state="hidden", tag="led")
            self.keys.append(key)
        # self.canvas.tag_bind("button", "<Button-1>", self.dummy)
        self.canvas.tag_bind("button", "<Double-Button-1>", self.dummy)
        # self.canvas.bind("<ButtonRelease-1>", self.dummy)

    def dummy(self, event):
        print(self.canvas.find_overlapping(event.x, event.y, event.x, event.y))


def main():
    img_path = os.path.join(os.getcwd(), "img\\hjp")
    root = tk.Tk()
    SpeedGauge(root, max_=160).grid(row=0, column=0, rowspan=3)
    traction = TractiveEffortGauge(root)
    traction.grid(row=0, column=1, rowspan=3)
    ControlLeaver(root, img_path=img_path).grid(row=3, column=0)
    PressureGauge(root).grid(row=3, column=1)
    positions = (
        SwitchPosition(position=0, label="0", value=0),
        SwitchPosition(position=90, label="1", value=1),
        SwitchPosition(position=180, label="Z", value=-5, momentary=True),
    )
    RotarySwitch(root,
                 notches=positions,
                 block=(180, 0), default=positions[0],
                 size=100).grid(row=0, column=2)
    positions = (
        SwitchPosition(position=-1, label="Z", value=-1),
        SwitchPosition(position=0, label="0", value=0),
        SwitchPosition(position=1, label="P", value=1)
    )
    LeaverSwitch(root,
                 notches=positions, block=(-1, 0),
                 size=100).grid(row=0, column=3)

    positions = (
        SwitchPosition(position=-90, label="N", value=0),
        SwitchPosition(position=0, label="MAN", value=1),
        SwitchPosition(position=45, label="ARR", value=2),
        SwitchPosition(position=90, label="CB", value=3)
    )
    RotarySwitch(root,
                 notches=positions,
                 block=(90, 270),
                 size=100).grid(row=1, column=2)

    KeyPad(root, filename=os.path.join(IMG, "klavesnice AVV.gif")).grid(row=0, column=6, rowspan=3)

    root.mainloop()


if __name__ == "__main__":
    main()
