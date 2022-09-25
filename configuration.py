##################################################
# MQTT ###########################################
##################################################

# connection credentials
MQTT_CREDENTIALS_FILE = ".\\secrets\\mqtt\\local.json"

# number of communication loop run per second - internal delay after each loop is set accordingly
MQTT_LOOP_FREQUENCY = 1000

# connect automatically after startup without prompting the user
MQTT_AUTOCONNECT = True

# MQTT topic designated for incoming messages (only messages from EVC are expected)
SUBCRIBE_TOPIC = "+/tiu/#"

# intervals for transmitting values
# positive numbers - interval in milliseconds [ms]
# 0 - transmit only ON CHANGE
# negative number - transmit in given interval [ms], when change occurs, transmit immediately
ODO_INTERVAL = 100  # ms - i.e. 10 Hz
TIU_INTERVAL = 0
BTM_INTERVAL = 0

##################################################
# DATABASE CONNECTION ############################
##################################################

# database credentials
DATABASE_CREDENTIALS_FILE = ".\\secrets\\database\\local_mysqlwb_2022-04-01.json"

# connect automatically after startup without prompting the user
DATABASE_AUTOCONNECT = True

# if for some reason no connection to database is possible, uncomment the following 'BALISES' placeholder
# it will be then used instead of any loaded data;
# if the connection should be performed, 'BALISES' must be set to []

BALISES = []
# BALISES = [
#     {'position': 400.0,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 0, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 1, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 402.5,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 1, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 1, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 1900.0,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 0, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 2, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 1902.5,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 1, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 2, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 3400.0,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 0, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 3, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 3402.5,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 1, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 3, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 4900.0,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 0, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 4, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 4902.5,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 1, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 4, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 6400.0,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 0, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 5, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 6402.5,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 1, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 5, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 7900.0,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 0, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 6, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 7902.5,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 1, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 6, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 9402.5,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 1, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 7, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
#     {'position': 9400.0,
#      'telegram': '{"Q_UPDOWN": 1, "M_VERSION": 16, "Q_MEDIA": 0, "N_PIG": 0, "N_TOTAL": 1, "M_DUP": 0, "M_MCOUNT": 0, "NID_C": 0, "NID_BG": 7, "Q_LINK": 0, "End of Information": {"NID_PACKET": 255}}'},
# ]

# netElement id that the SQL balise_query for fetching balise data is based upon
STARTING_NET_ELEMENT = "9f5aea90-d268-466e-8b9c-032c4183a8d3"

# SQL balise_query definition
QUERY_FILE = "balises.sql"
# QUERY_FILE = "balises_x21.sql"

# after loading balise positions, shift all positions by 'STARTING_OFFSET' towards the locomotive
# TODO: set in accordance with data used by EVC
# STARTING_OFFSET = 402.6  # m
STARTING_OFFSET = 0  # m


##################################################
# Physics simulation #############################
##################################################

# maximal pressure in train indirect brake cylinder
MAX_TR_BR_APL = 3.8  # bar [max train brake application]

# maximal pressure in loco direct brake cylinder
MAX_DIR_BR_APL = 6  # bar [max direct brake application]

# pressure in the train line (i.e. main brake pipe) when train brake is fully released
MAX_TL_PRESS = 5  # bar

# default train mass
MASS = 200  # t

# default DECELERATION when full train brake is applied (excluding loco brakes)
ACCELERATION = 0.9  # m/s/s

# actual max brake force calculated from required deceleration at full train brake application
BRAKING_FORCE = MASS * ACCELERATION  # kN

# time needed to fill train brake cylinders from 0 to MAX_TR_BR_APL
FILLING_TIME = 7  # s

# time needed to empty train brake cylinders from MAX_TR_BR_APL to 0
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

# mass of the locomotive
LOCO_MASS = 88  # t

# brake force exerted by fully applied locomotive direct brake
LOCO_PARKING_BRAKE = 35  # kN

# time needed to fully apply / release the direct loco brake
LOCO_PARKING_TIME = 2.5  # s

# maximum braking force of the locomotive electric brake
LOCO_MAX_EDB = 150  # kN

# max locomotive tractive effort
LOCO_MAX_TRACTION = 300  # kN

# rate, at which relative tractive effort is changed
LOCO_DRELEFR = 1 / 7  # 1/s [*100 = %/s]

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
