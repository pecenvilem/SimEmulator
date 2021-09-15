import tkinter as tk
import tkinter.messagebox as msb
import time
import random


class TrackMap(tk.Frame):
    """Mapa trati

    Vytvořena pro český systém LS, nutno významě předělat pro ETCS...
    """

    GLITCH_RANGE = 5
    GLITCH_INTERVAL = 1

    def __init__(self, parent, *args, **kwargs):
        self.height = kwargs.pop("height", 300)
        self.width = kwargs.pop("width", 300)
        self.variable = kwargs.pop("variable", tk.StringVar(value="Bez kódu"))
        super().__init__(parent, *args, **kwargs)
        self.grid_rowconfigure(0, weight=1)
        self.grid_rowconfigure(10, weight=1)
        self.grid_columnconfigure(0, weight=1)
        self.grid_columnconfigure(20, weight=1)
        self.canvas = tk.Canvas(self, width=int(self.width * 0.4), height=self.height)
        self.canvas.grid(row=1, column=1, rowspan=10)
        labels = (item for item in [2000, 1000, 500, 0, -500, -1000])
        for i in range(1, 12):  # 1 through 11
            x1, y1 = (0, i * self.height / 12)
            y2 = y1
            if i % 2 == 0:
                x2 = self.width * 0.125
            else:
                x2 = self.width * 0.25
                self.canvas.create_text(x2 + 5, y2, text=f"{next(labels)} m", anchor="w")
            self.canvas.create_line(x1, y1, x2, y2, tag="mark")
        tk.Label(self, text="Vzdálenost mezi návěstidly [m]:").grid(row=1, column=2, sticky="e")
        self.dist_var = tk.StringVar(value="1050")
        tk.Entry(self, textvariable=self.dist_var, width=6).grid(row=1, column=3, sticky="w", padx=5, columnspan=2)
        self.length_var = tk.StringVar(value="1000")
        tk.Label(self, text="Délka úseku s přenosem kódu [m]:").grid(row=2, column=2, sticky="e")
        tk.Entry(self, textvariable=self.length_var, width=6).grid(row=2, column=3, sticky="w", padx=5, columnspan=2)
        self.glitch_var = tk.IntVar()
        tk.Label(self, text="Náhodné poruchy přenosu:").grid(row=3, column=2, sticky="e")
        tk.Checkbutton(self, variable=self.glitch_var).grid(row=3, column=3, sticky="w")
        f = tk.Frame(self, relief="groove", borderwidth=2)
        f.grid(row=4, column=2, columnspan=4)
        tk.Label(f, text="Simulovat situaci:").grid(row=0, column=0, columnspan=2)
        self.options = ["Volno > Stůj",
                        "Volno > Do odbočky"]
        self.sim_var = tk.StringVar(value=self.options[0])
        self.sim_opmenu = tk.OptionMenu(f, self.sim_var, *self.options)
        self.sim_opmenu.config(width=30)
        self.sim_opmenu.grid(row=2, column=1, columnspan=2)
        tk.Button(f, text="Simulovat", command=self.simulate).grid(row=3, column=1, columnspan=3)
        self.canvas.bind("<Double-Button-1>", self.add_code)
        self.canvas.bind("<Button-3>", self.add_glitch)
        self.canvas.tag_bind("code", "<Button-1>", self.edit_code)
        self.canvas.tag_bind("item", "<Button-2>", self.remove)
        self.items = []
        self.code = 0
        self.glitch_timer = time.time()
        self.after(10, lambda: self.shift(0))

    def clear(self):
        self.canvas.delete("item")
        self.items = []

    def set(self, code):
        self.clear()
        self.add_code(code=code, start=-1, end=None)

    def draw_item(self, item):
        if item["start"] > 2500:
            return self.canvas.create_line(0, -10, 0, -10, tag="item")
        if item["type"] == "glitch":
            x1, y1 = 0.100 * self.width, self.track_to_canvas(item["start"]) - self.width * 0.0125
            x2, y2 = 0.125 * self.width, self.track_to_canvas(item["start"]) + self.width * 0.0125
            return self.canvas.create_oval(x1, y1, x2, y2, fill="magenta", tag=("glitch", "item"))
        elif item["type"] == "code":
            if item["end"] is None:
                x1, y1 = 0, -10
            else:
                x1, y1 = 0, self.track_to_canvas(min(item["end"], 2500))
            x2, y2 = self.width * 0.100, self.track_to_canvas(max(item["start"], -1250))
            if item["code"] == 1:
                color = "red"
            elif item["code"] == 2:
                color = "orange"
            elif item["code"] == 3:
                color = "yellow"
            else:
                color = "green"
            item_id = self.canvas.create_rectangle(x1, y1, x2, y2, fill=color, outline="", tag=("code", "item"))
            self.canvas.tag_raise("mark", item_id)
            return item_id

    def refresh(self):
        self.canvas.delete("item")
        for item in self.items:
            item["id"] = self.draw_item(item)

    def canvas_to_track(self, value):
        if value < self.height * 3 / 12:
            return 2500 - value / (self.height * 3 / 12) * 1500
        else:
            return 1000 - (value - (self.height * 3 / 12)) / (self.height * 9 / 12) * 2250

    def track_to_canvas(self, value):
        if value > 1000:
            return (2500 - value) * (self.height * 3 / 12) / 1500
        else:
            return ((self.height * 9 / 12) / 2250) * (1000 - value) + (self.height * 3 / 12)

    def add_code(self, event=None, **kwargs):
        try:
            length = int(self.length_var.get())
        except ValueError:
            msb.showerror("Neplatné zadání", "Nepodařilo se načíst délku úseku s přenosem kódu.")
            return
        if event is not None:
            start = self.canvas_to_track(event.y)
        else:
            try:
                start = kwargs.get("start", self.dist_var.get())
            except ValueError:
                msb.showerror("Neplatné zadání", "Nepodařilo se načíst vzdálenost k dalšímu návěstidlu")
                return
        end = kwargs.get("end", start + length)
        item = {
            "id": None,
            "type": "code",
            "start": start,
            "end": end,
            "code": kwargs.get("code", 1)
        }
        item["id"] = self.draw_item(item)
        self.items.append(item)

    def edit_code(self, event=None, item=None):
        if event is not None:
            found = self.canvas.find_closest(event.x, event.y)
        else:
            found = tuple([item])
        f = (item for item in self.items if item["id"] in found)
        for item in f:
            item["code"] += 1
            if item["code"] > 4:
                item["code"] = 1
        self.refresh()

    def add_glitch(self, event=None, **kwargs):
        if event is not None:
            start = self.canvas_to_track(event.y)
        else:
            start = kwargs.get("start", 0)
        item = {
            "id": None,
            "type": "glitch",
            "start": start,
            "fire": time.time(),
            "glitch_to": 0
        }
        item["id"] = self.draw_item(item)
        self.items.append(item)

    def remove(self, event=None, item=None):
        if event is not None:
            found = self.canvas.find_closest(event.x, event.y)
        else:
            found = tuple([item["id"]])
        for item_id in found:
            self.canvas.delete(item_id)
            self.items = [item for item in self.items if item["id"] != item_id]

    def simulate(self):
        self.clear()
        situation = self.sim_var.get()
        try:
            length = int(self.length_var.get())
            d = int(self.dist_var.get())
        except ValueError:
            msb.showerror("Neplatné zadání", "Nepodařilo se načíst data")
            return
        if situation == self.options[0]:  # 'Volno > Stůj'
            self.add_code(start=-1, end=length, code=4)
            self.add_code(start=d, end=d+length, code=3)
            self.add_code(start=2*d, end=2*d+length, code=1)
        elif situation == self.options[1]:  # 'Volno > Do odbočky'
            self.add_code(start=-1, end=length, code=4)
            self.add_code(start=d, end=d + length, code=3)
            self.add_code(start=2 * d, end=2 * d + length, code=2)
            self.add_code(start=3 * d, end=3 * d + length, code=1)
        if self.glitch_var.get():
            for i in range(random.randint(0, 20)):
                self.add_glitch(start=random.uniform(0, 3 * d + length))
        self.refresh()

    def shift(self, distance):
        code = 0
        glitch = False
        for item in self.items:
            item["start"] -= distance
            try:
                item["end"] -= distance
            except KeyError:  # item is GLITCH
                if item["start"] < -1250:
                    self.remove(item=item)
                if -self.GLITCH_RANGE < item["start"] <= 0:
                    if item["fire"] <= time.time():
                        glitch = True
                        item["glitch_to"] = random.randint(0, 4)
                        item["fire"] = time.time() + random.uniform(0, 1) * self.GLITCH_INTERVAL
                    code = item["glitch_to"]
            except TypeError:  # item is CODE with None end
                if item["start"] <= 0 and not glitch:
                    code = item["code"]
            else:
                if item["start"] * item["end"] <= 0 and not glitch:
                    code = item["code"]
                if item["end"] < -1250:
                    self.remove(item=item)

        # for name, c in SIGNAL_CODES.items():
        #     if c == code:
        #         self.variable.set(name)
        #         break
        self.variable.set(code)
        if distance != 0:
            self.refresh()
