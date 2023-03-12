import json
import tkinter as tk
import tkinter.messagebox as msb
import mysql.connector
from configuration import DATABASE_CREDENTIALS_FILE
from configuration import QUERY_FILE
from configuration import STARTING_NET_ELEMENT


def load_credentials(filename):
    with open(filename, "rt") as f:
        credentials = json.load(f)
        try:
            check_credentials(credentials)
        except ValueError as e:
            raise ValueError(f"Loading database credentials from file {filename} failed!") from e
    return credentials


def check_credentials(credentials):
    if not isinstance(credentials, dict):
        raise ValueError(f"Incorrect type! 'dict' required but got '{type(credentials)}' instead.")
    for key in ["host", "user", "password", "database"]:
        if key not in credentials:
            raise ValueError(f"{key} key missing in credentials!")


class TrackMap(tk.Frame):
    """Mapa trati"""

    def __init__(self, parent, *args, **kwargs):
        self.height = kwargs.pop("height", 300)
        self.width = kwargs.pop("width", 300)
        self.variable = kwargs.pop("variable", tk.StringVar())
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
            # noinspection PyArgumentList
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
            # noinspection PyArgumentList
            self.canvas.create_line(x1, y1, x2, y2, tag="mark")
        self.balises = []
        self.telegrams_pending = []
        self.telegram_in_transit = False

    def clear_for_next_telegram(self):
        self.telegram_in_transit = False

    def load_data(self):
        tl = tk.Toplevel(self)
        # noinspection PyTypeChecker
        tl.transient(self)
        tl.focus_set()

        try:
            with open(QUERY_FILE, "rt") as f:
                query = f.read()
            # TODO: PARAM
            query = query.format(STARTING_NET_ELEMENT=STARTING_NET_ELEMENT)
        except FileNotFoundError as e:
            msb.showerror(
                "Načtení SQL dotazu.",
                str(e)
            )
            return

        host = tk.StringVar()
        user = tk.StringVar()
        password = tk.StringVar()
        database = tk.StringVar()

        try:
            credentials = load_credentials(DATABASE_CREDENTIALS_FILE)
            host = tk.StringVar(value=credentials["host"])
            user = tk.StringVar(value=credentials["user"])
            password = tk.StringVar(value=credentials["password"])
            database = tk.StringVar(value=credentials["database"])
        except ValueError as e:
            msb.showerror(
                "Načtení přihlašovacích údajů.",
                str(e)
            )

        def load():
            try:
                connection = mysql.connector.connect(
                    host=host.get(),
                    user=user.get(),
                    password=password.get(),
                    database=database.get()
                )
            except mysql.connector.Error as err:
                msb.showerror(
                    "Připojení k databázi",
                    str(err)
                )
                return
            cursor = connection.cursor()
            try:
                cursor.execute(query)
            except mysql.connector.errors.DatabaseError as err:
                msb.showerror(
                    "Hledání v databázi",
                    str(err)
                )
                return
            else:
                from configuration import DECODE_TELEGRAMS, BTM_NID_MESSAGE
                data = cursor.fetchall()
                self.balises = []
                total_dist = 0
                from configuration import STARTING_OFFSET
                for i, record in enumerate(data):
                    element_id, length, intrinsic, delta, balise_id, telegram = record
                    if i != 0:
                        prev_element, prev_length, *_ = data[i - 1]
                        if prev_element != element_id:
                            total_dist += prev_length
                    if balise_id is not None:
                        dist = total_dist + intrinsic * length + delta
                        if BTM_NID_MESSAGE is not None:
                            message = {"NID_MESSAGE": BTM_NID_MESSAGE}
                        else:
                            message = dict()
                        if DECODE_TELEGRAMS:
                            telegram = int(telegram, base=16)
                            i = len(f"{telegram:b}")
                            message.update({
                                "Q_UPDOWN": (telegram & (1 << (i - 1))) >> (i - 1),  # 1 bit [1]
                                "M_VERSION": (telegram & (127 << (i - 8))) >> (i - 8),  # 7 bits [2-8]
                                "Q_MEDIA": (telegram & (1 << (i - 9))) >> (i - 9),  # 1 bit [9],
                                "N_PIG": (telegram & (7 << (i - 12))) >> (i - 12),  # 3 bits [10-12],
                                "N_TOTAL": (telegram & (7 << (i - 15))) >> (i - 15),  # 3 bits [13-15],
                                "M_DUP": (telegram & (3 << (i - 17))) >> (i - 17),  # 2 bits [16-17],
                                "M_MCOUNT": (telegram & (255 << (i - 25))) >> (i - 25),  # 8 bits [18-25],
                                "NID_C": (telegram & (1023 << (i - 35))) >> (i - 35),  # 10 bits [26-35],
                                "NID_BG": ((telegram & (16383 << (i - 49))) >> (i - 49)),  # 14 bits [36-49],
                                "Q_LINK": (telegram & (1 << (i - 50))) >> (i - 50),  # 1 bit [50],
                                "End of Information": {
                                    "NID_PACKET": 255  # 8 more bits [51-58]
                                }
                            })
                        else:
                            message.update({"telegram": telegram})
                        self.balises.append({"position": dist - STARTING_OFFSET, "telegram": json.dumps(message)})
                if not DATABASE_AUTOCONNECT:
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

        from configuration import BALISES, DATABASE_AUTOCONNECT
        if BALISES:
            self.balises = BALISES
            self.refresh()
            tl.destroy()
            return

        if DATABASE_AUTOCONNECT:
            load()

    def draw_balise(self, balise):
        if -1000 <= balise["position"] <= 2500:
            position = self.track_to_canvas_main(balise["position"])
            x1, y1 = 0.100 * self.width, position - self.width * 0.0125
            x2, y2 = 0.125 * self.width, position + self.width * 0.0125
            # noinspection PyArgumentList
            self.canvas.create_oval(x1, y1, x2, y2, fill="magenta", tag=("balise", "item"))
        if -5 <= balise["position"] <= 5:
            position = self.track_to_canvas_detail(balise["position"])
            x1, y1 = 0.650 * self.width, position - self.width * 0.0125
            x2, y2 = 0.675 * self.width, position + self.width * 0.0125
            # noinspection PyArgumentList
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
        return self.height / 2 * (1 - value / 5)

    def shift(self, distance):
        for balise in self.balises:
            if balise["position"] * (balise["position"] - distance) <= 0 and balise["position"] != 0:
                self.telegrams_pending.append(balise["telegram"])
            balise["position"] -= distance
        if not self.telegram_in_transit and self.telegrams_pending:
            self.telegram_in_transit = True
            self.variable.set(self.telegrams_pending.pop(0))
        if distance != 0:
            self.refresh()
