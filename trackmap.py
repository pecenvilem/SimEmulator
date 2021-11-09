import json
import tkinter as tk
import tkinter.messagebox as msb
import mysql.connector
import re
from secrets import db_host, db_user, db_password, db_database
with open("balises.sql", "rt") as f:
    query = f.read()
# TODO: PARAM
from configuration import STARTING_NET_ELEMENT
query = query.format(STARTING_NET_ELEMENT=STARTING_NET_ELEMENT)


class TrackMap(tk.Frame):
    """Mapa trati"""

    def __init__(self, parent, *args, **kwargs):
        self.height = kwargs.pop("height", 300)
        self.width = kwargs.pop("width", 300)
        self.variable = kwargs.pop("variable", tk.StringVar())
        self.range = kwargs.pop("balise_transmitt_range", 1)
        super().__init__(parent, *args, **kwargs)
        self.grid_rowconfigure(0, weight=1)
        self.grid_rowconfigure(10, weight=1)
        self.grid_columnconfigure(0, weight=1)
        self.grid_columnconfigure(20, weight=1)
        self.canvas = tk.Canvas(self, width=int(self.width * 0.8), height=self.height)
        self.canvas.grid(row=1, column=1)
        tk.Button(self, text="Načíst", command=self.load_data).grid(row=1, column=2)
        labels_main = iter([2000, 1000, 500, 0, -500, -1000])
        for i in range(1, 12):  # 1 through 11
            x1, y1 = (0, i * self.height / 12)
            y2 = y1
            if i % 2 == 0:
                x2 = self.width * 0.125
            else:
                x2 = self.width * 0.25
                self.canvas.create_text(x2 + 5, y2, text=f"{next(labels_main)} m", anchor="w")
            self.canvas.create_line(x1, y1, x2, y2, tag="mark")
        labels_detail = iter([5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5])
        for i in range(1, 12):  # 1 through 11
            x1, y1 = (self.width * 0.45, i * self.height / 12)
            y2 = y1
            if i % 2 == 1:
                x2 = self.width * 0.55
            else:
                x2 = self.width * 0.7
            self.canvas.create_text(x2 + 5, y2, text=f"{next(labels_detail)} m", anchor="w")
            self.canvas.create_line(x1, y1, x2, y2, tag="mark")
        self.balises = []

    def load_data(self):
        tl = tk.Toplevel(self)
        tl.transient(self)
        tl.focus_set()
        host = tk.StringVar(value=db_host)
        user = tk.StringVar(value=db_user)
        password = tk.StringVar(value=db_password)
        database = tk.StringVar(value=db_database)

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
                cursor.execute(query)
            except mysql.connector.errors.DatabaseError as e:
                msb.showerror(
                    "Hledání v databázi",
                    str(e)
                )
                return
            else:
                data = cursor.fetchall()
                self.balises = []
                total_dist = 0
                for i, record in enumerate(data):
                    element, length, intrinsic, delta, balise, pos_in_group, duplicate, group, def_tgmr,  *_ = record
                    if i != 0:
                        prev_element, prev_length, *_ = data[i - 1]
                        if prev_element != element:
                            total_dist += prev_length
                    if balise is not None:
                        # match = re.search(r"\d+", group)
                        # try:
                        #     group = int(match.group())
                        # except ValueError:
                        #     # invalid number - reserved for linking
                        #     # [intention is to cause an error since balise group number was not recognized]
                        #     group = 16383
                        # dist = total_dist + intrinsic * length + delta
                        # telegram = {
                        #     "Q_UPDOWN": 1,
                        #     "M_VERSION": 16,
                        #     "Q_MEDIA": 0,
                        #     "N_PIG": pos_in_group,
                        #     "N_TOTAL": 1,
                        #     "M_DUP": duplicate,
                        #     "M_MCOUNT": 0,
                        #     "NID_C": 513,
                        #     "NID_BG": group,
                        #     "Q_LINK": 0,
                        #     "End of Information": {
                        #         "NID_PACKET": 255
                        #     }
                        # }

                        # Pulling default telegrams from DB
                        # According to SUBSET-026-7 v0360 total length of telegram should be 58 bits
                        # DB returns 64 bit long hex number
                        #
                        dist = total_dist + intrinsic * length + delta
                        def_tgmr = int(def_tgmr, base=16)
                        i = len(f"{def_tgmr:b}")
                        telegram = {
                            "Q_UPDOWN": (def_tgmr & (1 << (i - 1))) >> (i - 1),  # 1 bit [1]
                            "M_VERSION": (def_tgmr & (127 << (i - 8))) >> (i - 8),  # 7 bits [2-8]
                            "Q_MEDIA": (def_tgmr & (1 << (i - 9))) >> (i - 9),  # 1 bit [9],
                            "N_PIG": (def_tgmr & (7 << (i - 12))) >> (i - 12),  # 3 bits [10-12],
                            # "N_TOTAL": (def_tgmr & (7 << (i - 15))) >> (i - 15),  # 3 bits [13-15],
                            "N_TOTAL": 1,  # 3 bits [13-15],
                            "M_DUP": (def_tgmr & (3 << (i - 17))) >> (i - 17),  # 2 bits [16-17],
                            "M_MCOUNT": (def_tgmr & (255 << (i - 25))) >> (i - 25),  # 8 bits [18-25],
                            "NID_C": (def_tgmr & (1023 << (i - 35))) >> (i - 35),  # 10 bits [26-35],
                            "NID_BG": (def_tgmr & (16383 << (i - 49))) >> (i - 49),  # 14 bits [36-49],
                            "Q_LINK": (def_tgmr & (1 << (i - 50))) >> (i - 50),  # 1 bit [50],
                            "End of Information": {
                                "NID_PACKET": 255  # 8 more bits [51-58]
                            }
                        }
                        # common append for both the original and new method of reading telegrams
                        self.balises.append({"position": dist, "telegram": json.dumps(telegram)})
                if not DATABASE_AUTOCONNECT:
                    msb.showinfo(
                        "Načtení dat",
                        f"Načteno {len(self.balises)} balíz."
                    )
                self.refresh()
                from configuration import STARTING_OFFSET
                self.shift(STARTING_OFFSET)
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

        from configuration import DATABASE_AUTOCONNECT
        if DATABASE_AUTOCONNECT:
            load()

    def draw_balise(self, balise):
        if -1000 <= balise["position"] <= 2500:
            position = self.track_to_canvas_main(balise["position"])
            x1, y1 = 0.100 * self.width, position - self.width * 0.0125
            x2, y2 = 0.125 * self.width, position + self.width * 0.0125
            self.canvas.create_oval(x1, y1, x2, y2, fill="magenta", tag=("balise", "item"))
        if -5 <= balise["position"] <= 5:
            position = self.track_to_canvas_detail(balise["position"])
            x1, y1 = 0.650 * self.width, position - self.width * 0.0125
            x2, y2 = 0.675 * self.width, position + self.width * 0.0125
            self.canvas.create_oval(x1, y1, x2, y2, fill="magenta", tag=("balise", "item"))

    def refresh(self):
        self.canvas.delete("item")
        for item in self.balises:
            self.draw_balise(item)

    def canvas_to_track_main(self, value):
        if value < self.height * 3 / 12:
            return 2500 - value / (self.height * 3 / 12) * 1500
        else:
            return 1000 - (value - (self.height * 3 / 12)) / (self.height * 9 / 12) * 2250

    def track_to_canvas_main(self, value):
        if value > 1000:
            return (2500 - value) * (self.height * 3 / 12) / 1500
        else:
            return ((self.height * 9 / 12) / 2250) * (1000 - value) + (self.height * 3 / 12)

    def track_to_canvas_detail(self, value):
        return self.height / 2 - value / 5 * self.height / 2

    def shift(self, distance):
        telegrams = []
        for balise in self.balises:
            balise["position"] -= distance
            if -self.range / 2 <= balise["position"] <= self.range / 2:
                telegrams.append(balise["telegram"])
        if telegrams:
            string = telegrams[0]
        else:
            string = '[]'
        self.variable.set(string)
        if distance != 0:
            self.refresh()
