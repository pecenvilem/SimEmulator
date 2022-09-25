import json
import time
import tkinter as tk
import tkinter.messagebox

import paho.mqtt.client
import threading

from main import load_mqtt_credentials
from configuration import MQTT_CREDENTIALS_FILE


class MQTTClient:

    def __init__(self, service_brake_var, emergency_brake_var, interval = 1000):
        credentials = load_mqtt_credentials(MQTT_CREDENTIALS_FILE)
        self.client = paho.mqtt.client.Client(client_id="Dummy EVC")
        if credentials["username"] is not None:
            self.client.username_pw_set(credentials["username"], credentials["password"])
        self.client.connect(credentials["host"], int(credentials["port"]))
        self.client.loop_start()
        self._interval = interval / 1000
        self.emergency_var = emergency_brake_var
        self.service_var = service_brake_var
        self.__run = True
        self.tx_thread = threading.Thread(target=self.tx, daemon=True)
        self.tx_thread.start()

    def tx(self):
        while self.__run:
            data = {
                "service_brake": self.service_var.get(),
                "emergency_brake": self.emergency_var.get()
            }
            self.client.publish("evc/tiu", payload=json.dumps(data))
            time.sleep(self._interval)

    def stop(self):
        self.__run = False
        self.tx_thread.join()
        self.client.disconnect()

    @property
    def interval(self):
        return self._interval

    @interval.setter
    def interval(self, value):
        self._interval = value


def main():
    root = tk.Tk()
    root.title("EVC")

    emergency_brake = tk.BooleanVar(value=False)
    service_brake = tk.BooleanVar(value=False)
    from configuration import TIU_INTERVAL
    try:
        interval_var = tk.StringVar(value=f"{1 / abs(TIU_INTERVAL):.3f}")
    except ZeroDivisionError:
        interval_var = tk.StringVar(value="1000")

    tk.Label(root, text="Provozní brzda").grid(row=0, column=0)
    tk.Radiobutton(root, text="True", value=True, variable=service_brake).grid(row=0, column=1)
    tk.Radiobutton(root, text="False", value=False, variable=service_brake).grid(row=0, column=2)

    tk.Label(root, text="Nouzová brzda").grid(row=1, column=0)
    tk.Radiobutton(root, text="True", value=True, variable=emergency_brake).grid(row=1, column=1)
    tk.Radiobutton(root, text="False", value=False, variable=emergency_brake).grid(row=1, column=2)

    tk.Label(root, text="Interval\nodesílání [ms]").grid(row=2, column=0)
    tk.Entry(root, textvariable=interval_var, width=7).grid(row=2, column=1, columnspan=2, sticky="w")

    client = MQTTClient(service_brake, emergency_brake)

    def set_interval(_):
        root.focus()
        try:
            interval = float(interval_var.get())
        except ValueError as e:
            tkinter.messagebox.showwarning("Chyba", e)
        else:
            client._interval = interval / 1000

    root.bind("<Return>",  set_interval)
    root.mainloop()
    client.stop()


if __name__ == "__main__":
    main()