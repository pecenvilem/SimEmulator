from configuration import DEFAULT_DISPLACEMENT
from configuration import DEFAULT_OVERREADING
from configuration import DEFAULT_UNDERREADING

from configuration import MASS, FULL_TRAIN_BRAKE_ACCELERATION, BRAKING_FORCE, FILLING_TIME, VENTING_TIME, A, B, C
from configuration import POWER, SLOPE, ADHESION_UTILISATION

import tkinter as tk

DEFAULT_COMM_VARIABLES = {
    "BATTERY": tk.BooleanVar(value=False),
    "ODO_START_UP": tk.BooleanVar(value=False),
    "DISPLACEMENT": tk.DoubleVar(value=DEFAULT_DISPLACEMENT),
    "UNDERREADING": tk.DoubleVar(value=DEFAULT_UNDERREADING),
    "OVERREADING": tk.DoubleVar(value=DEFAULT_OVERREADING),
    "SPEED": tk.DoubleVar(value=0),
    "ACCELERATION": tk.DoubleVar(value=0),
    "DIRECTION_LEAVER": tk.IntVar(value=2),
    "BRAKE_CYLINDER_PRESSURE": tk.DoubleVar(value=6),
    "TRAIN_LINE_PRESSURE": tk.DoubleVar(value=5),
    "EP_VALVE": tk.BooleanVar(value=False),
    "BRAKE": tk.BooleanVar(value=False),
    "CONTROL_SWITCH": tk.BooleanVar(value=False),
    "DRIVING_LEAVER": tk.IntVar(value=3),
    "BALISE_TELEGRAM": tk.StringVar(value="{}")
}

DEFAULT_SIM_VARIABLES = {
    "TRACTION_TARGET": tk.DoubleVar(value=0),
    "TRACTION": tk.DoubleVar(value=0),
    "TRAIN_MASS": tk.StringVar(value=str(MASS)),
    "FULL_TRAIN_BRAKE_ACCELERATION": tk.StringVar(value=str(FULL_TRAIN_BRAKE_ACCELERATION)),
    "TRAIN_BRAKING_FORCE": tk.StringVar(value=str(BRAKING_FORCE)),
    "CYLINDER_FILL_TIME": tk.StringVar(value=FILLING_TIME),
    "CYLINDER_VENT_TIME": tk.StringVar(value=VENTING_TIME),
    "A": tk.StringVar(value=str(A)),
    "B": tk.StringVar(value=str(B)),
    "C": tk.StringVar(value=str(C)),
    "POWER": tk.StringVar(value=str(POWER)),
    "SLOPE": tk.StringVar(value=str(SLOPE)),
    "ADHESION_UTILISATION": tk.StringVar(value=str(ADHESION_UTILISATION)),
    "RELATIVE_EFFORT": tk.DoubleVar(value=0),
    "CONTROL_MODE": tk.IntVar(value=1)
}
