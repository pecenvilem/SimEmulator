import tkinter as tk
import tkinter.messagebox as msb
import mysql.connector


class TrackMap(tk.Frame):
    """Mapa trati"""

    def __init__(self, parent, *args, **kwargs):
        self.height = kwargs.pop("height", 300)
        self.width = kwargs.pop("width", 300)
        self.variable = kwargs.pop("variable", tk.StringVar())
        self.range = kwargs.pop("balise_transmitt_range", 2)
        super().__init__(parent, *args, **kwargs)
        self.grid_rowconfigure(0, weight=1)
        self.grid_rowconfigure(10, weight=1)
        self.grid_columnconfigure(0, weight=1)
        self.grid_columnconfigure(20, weight=1)
        self.canvas = tk.Canvas(self, width=int(self.width * 0.4), height=self.height)
        self.canvas.grid(row=1, column=1)
        tk.Button(self, text="Načíst", command=self.load_data).grid(row=1, column=2)
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
        self.balises = []

    def load_data(self):
        tl = tk.Toplevel(self)
        tl.transient(self)
        tl.focus_set()
        host = tk.StringVar(value="localhost")
        user = tk.StringVar(value="root")
        password = tk.StringVar(value="")
        database = tk.StringVar(value="test")

        def load():
            try:
                connection = mysql.connector.connect(
                    host=host.get(),
                    user=user.get(),
                    password=password.get(),
                    database=database.get()
                )
            except mysql.connector.Error as e:
                msb.showerror(
                    "Připojení k databázi",
                    str(e)
                )
                return
            cursor = connection.cursor()
            try:
                cursor.execute("SELECT position, json FROM `balise`;")
            except mysql.connector.errors.DatabaseError as e:
                msb.showerror(
                    "Hledání v databázi",
                    str(e)
                )
                return
            else:
                self.balises = list([{"position": position, "telegram": json} for position, json in cursor])
                msb.showinfo(
                    "Načtení dat",
                    f"Načteno {len(self.balises)} balíz."
                )
                self.refresh()
            finally:
                cursor.close()
                connection.close()
                tl.destroy()

        tk.Label(tl, text="Host:").grid(row=0, column=0)
        tk.Entry(tl, textvariable=host).grid(row=0, column=1)
        tk.Label(tl, text="User:").grid(row=1, column=0)
        tk.Entry(tl, textvariable=user).grid(row=1, column=1)
        tk.Label(tl, text="Password:").grid(row=2, column=0)
        tk.Entry(tl, textvariable=password, show="*").grid(row=2, column=1)
        tk.Label(tl, text="Database:").grid(row=3, column=0)
        tk.Entry(tl, textvariable=database).grid(row=3, column=1)
        tk.Button(tl, text="Načíst", command=load).grid(row=4, column=1, columnspan=2)

    def draw_balise(self, balise):
        if -1000 <= balise["position"] <= 2500:
            position = self.track_to_canvas(balise["position"])
            x1, y1 = 0.100 * self.width, position - self.width * 0.0125
            x2, y2 = 0.125 * self.width, position + self.width * 0.0125
            return self.canvas.create_oval(x1, y1, x2, y2, fill="magenta", tag=("balise", "item"))

    def refresh(self):
        self.canvas.delete("item")
        for item in self.balises:
            item["id"] = self.draw_balise(item)

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

    def shift(self, distance):
        telegrams = []
        for balise in self.balises:
            balise["position"] -= distance
            if -self.range / 2 <= balise["position"] <= self.range / 2:
                telegrams.append(balise["telegram"])
        string = f"[{','.join(telegrams)}]"
        self.variable.set(string)
        if distance != 0:
            self.refresh()
