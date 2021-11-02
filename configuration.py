##################################################
# MQTT ###########################################
##################################################

# connection details are stored in secrets.py file

MQTT_AUTOCONNECT = True

SUBCRIBE_TOPIC = "+/tiu/#"

PUBLISH_FREQUENCY = 10  # Hz


##################################################
# DATABASE CONNECTION ############################
##################################################

# connection details are stored in secrets.py file

DATABASE_AUTOCONNECT = True

STARTING_NET_ELEMENT = "9f5aea90-d268-466e-8b9c-032c4183a8d3"

STARTING_OFFSET = 1000  # m


##################################################
# Physics simulation #############################
##################################################

# maximal pressure in train indirect brake cylinder
MAX_TR_BR_APPL = 3.8  # bar [max train brake application]

# maximal pressure in loco direct brake cylinder
MAX_DIR_BR_APPL = 6  # bar [max direct brake application]

# pressure in the train line (i.e. main brake pipe) when train brake is fully released
MAX_TL_PRESS = 5  # bar

# default train mass
MASS = 200  # t

# default DEceleration when full train brake is applied (excluding loco brakes)
ACCELERATION = 0.9  # m/s/s

# actual max brake force calculated from required deceleration at full train brake application
BRAKING_FORCE = MASS * ACCELERATION  # kN

# time needed to fill train brake cylinders from 0 to MAX_TR_BR_APPL
FILLING_TIME = 7  # s

# time needed to empty train brake cylinders from MAX_TR_BR_APPL to 0
VENTING_TIME = 16  # s

# max power of the locomotive
POWER = 6400  # kW

# default slope of the track used in simulation
SLOPE = 0

# default value of the 'adhesion utilisation coefficient' (describes the "slipperiness" of the track]
ADHESION_UTILISATION = 0.8

# absolute coefficient in the equation of train resistance
A = 0.00033

# linear coefficient in the equation of train resistance
B = 0.0008

# quadratic coefficient in the equation of train resistance
C = 1.35

# rate, at which train line (main brake pipe) pressure is changed when applying or releasing brakes
TRAIN_LINE_DP = 0.20  # bar/s

# time needed to empty the train line (brake pipe) when emergency brake is applied
TRAIN_LINE_VENT_TIME = 1.5  # s

# brake force exerted by fully applied locomotive direct brake
LOCO_PARKING_BRAKE = 35  # kN

# time needed to fully apply / release the direct loco brake
LOCO_PARKING_TIME = 2.5  # s

# maximum braking force of the locomotive electric brake
LOCO_MAX_EDB = 150  # kN

# max locomotive tractive effort
LOCO_MAX_TRACTION = 300  # kN

# rate, at which tractive force is changed
LOCO_DTRAX = LOCO_MAX_TRACTION / 6  # kN/s

# rate, at which the braking force of the locomotive electric brake is changed
LOCO_DEDB = LOCO_MAX_EDB / 6  # kN/s

# time needed for the locomotive to react to the change in desired tractive / electric braking force
LOCO_TRACTION_DELAY = 0.4  # s

# train line (main brake pipe) pressure at which the train brake exerts the maximal braking force
TL_PRESS_MAX_TR_BR = 3.5  # bar

# train line (main brake pipe) pressure, at which the decrease in pressure is considered linear, rather than exponential
# (used in emergency braking simulation when train line is vented)
TL_VENT_ELBOW = 0.3  # bar

# the least tractive / electric braking force (abs. value) that the loco can exert
# if a lower value is calculated, it is rounded down to zero
TRACTION_CUT_OFF = 500  # N

# speed, at which locomotive parking brake (i.e. direct pneumatic brake) is applied
PARKING_BRAKE_AUTOMATIC_ENGAGE = 1.0  # km/h
