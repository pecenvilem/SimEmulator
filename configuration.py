##################################################
# MQTT ###########################################
##################################################

# connection credentials
MQTT_CREDENTIALS_FILE = ".\\secrets\\mqtt\\local.json"

# number of communication loop runs per second - internal delay after each loop is set accordingly
MQTT_LOOP_FREQUENCY = 1000

# connect automatically after startup without prompting the user
MQTT_AUTOCONNECT = True

# MQTT topic designated for incoming messages (only messages from EVC are expected)
TIU_SUBSCRIBE_TOPIC = "+/tiu/#"
ODDO_SUBSCRIBE_TOPIC = "+/odo/#"

# intervals for transmitting values
# positive numbers - interval in milliseconds [ms]
# 0 - transmit only ON CHANGE
# negative number - transmit in given interval [ms], when change occurs, transmit immediately
ODO_INTERVAL = 100  # ms - i.e. 10 Hz !!! don't set negative intervals - NOT COMPATIBLE with new EVC implementation
TIU_INTERVAL = 0
BTM_INTERVAL = 0

##################################################
# DATABASE CONNECTION ############################
##################################################

# database credentials
# noinspection SpellCheckingInspection
DATABASE_CREDENTIALS_FILE = ".\\secrets\\database\\local_mysqlwb_2022-04-01.json"

# connect automatically after startup without prompting the user
DATABASE_AUTOCONNECT = True

# if for some reason no connection to database is possible, import the 'BALISES' list from 'default_balises.py'
# it will be then used instead of any loaded data;
# if the connection should be performed, 'BALISES' must be set to []
BALISES = []
# from default_balises import BALISES

# netElement id that the SQL balise_query for fetching balise data is based upon
# STARTING_NET_ELEMENT = "9f5aea90-d268-466e-8b9c-032c4183a8d3"
STARTING_NET_ELEMENT = "910d1e73-4df6-4b15-9745-8c77e564c67a"

# SQL balise_query definition
QUERY_FILE = "db/2022-04-01/utils/balises_2022-04-01.sql"
# QUERY_FILE = "db/2021-08-23/utils/balises.sql"
# QUERY_FILE = "db/2021-10-26/utils/balises_x21.sql"

# after loading balise positions, shift all positions by 'STARTING_OFFSET' towards the locomotive
# STARTING_OFFSET = 402.6  # m
STARTING_OFFSET = 0  # m

##################################################
# ETCS component configuration ###################
##################################################

# ODO ############################################
# value stored in the cyclical distance counter of the odometer on power up
DEFAULT_DISPLACEMENT = 0

# confidence interval span
DEFAULT_UNDERREADING = 100
DEFAULT_OVERREADING = 100

##################################################
# Physics simulation #############################
##################################################

# maximal pressure in train indirect brake cylinder
MAX_TR_BR_APL = 3.8  # bar [max train brake application]
# default: 3.8

# maximal pressure in loco direct brake cylinder
MAX_DIR_BR_APL = 6  # bar [max direct brake application]
# default: 6

# pressure in the train line (i.e. main brake pipe) when train brake is fully released
MAX_TL_PRESS = 5  # bar
# default: 5

# default train mass
MASS = 200  # t
# default: 200

# default DECELERATION when full train brake is applied (excluding loco brakes)
FULL_TRAIN_BRAKE_ACCELERATION = 0.9  # m/(s^2)
# default: 0.9

# actual max brake force calculated from required deceleration at full train brake application
BRAKING_FORCE = MASS * FULL_TRAIN_BRAKE_ACCELERATION  # kN
# default: MASS * FULL_TRAIN_BRAKE_ACCELERATION

# time needed to fill train brake cylinders from 0 to MAX_TR_BR_APL
FILLING_TIME = 7  # s
# default: 7

# time needed to empty train brake cylinders from MAX_TR_BR_APL to 0
VENTING_TIME = 16  # s
# default: 16

# max power of the locomotive
POWER = 6400  # kW
# default: 6400

# default slope of the track used in simulation
SLOPE = 0
# default: 0

# default value of the 'adhesion utilisation coefficient' (describes the "slipperiness" of the track)
ADHESION_UTILISATION = 0.8
# default: 0.8

# absolute coefficient in the equation of train resistance
A = 0.00033
# default: 0.00033

# linear coefficient in the equation of train resistance
B = 0.0008
# default: 0.0008

# quadratic coefficient in the equation of train resistance
C = 1.35
# default: 1.35

# rate, at which train line (main brake pipe) pressure is changed when applying or releasing brakes
TRAIN_LINE_DP = 0.20  # bar/s
# default: 0.20

# time needed to empty the train line (brake pipe) when emergency brake is applied
TRAIN_LINE_VENT_TIME = 1.5  # s
# default: 1.5

# mass of the locomotive
LOCO_MASS = 88  # t
# default: 88

# brake force exerted by fully applied locomotive direct brake
LOCO_PARKING_BRAKE = 35  # kN
# default: 35

# time needed to fully apply / release the direct loco brake
LOCO_PARKING_TIME = 2.5  # s
# default: 2.5

# maximum braking force of the locomotive electric brake
LOCO_MAX_EDB = 150  # kN
# default: 150

# max locomotive tractive effort
LOCO_MAX_TRACTION = 300  # kN
# default: 300

# rate, at which relative tractive effort is changed
LOCO_DRELEFR = 1 / 7  # 1/s [*100 = %/s]
# default: 1/7

# rate, at which tractive force is changed
LOCO_DTRAX = LOCO_MAX_TRACTION / 6  # kN/s
# default: LOCO_MAX_TRACTION / 6

# rate, at which the braking force of the locomotive electric brake is changed
LOCO_DEDB = LOCO_MAX_EDB / 6  # kN/s
# default: LOCO_MAX_EDB / 6

# time needed for the locomotive to react to the change in desired tractive / electric braking force
LOCO_TRACTION_DELAY = 0.4  # s
# default: 0.4

# train line (main brake pipe) pressure at which the train brake exerts the maximal braking force
TL_PRESS_MAX_TR_BR = 3.5  # bar
# default: 3.5

# train line (main brake pipe) pressure, at which the decrease in pressure is considered linear, rather than exponential
# (used in emergency braking simulation when train line is vented)
TL_VENT_ELBOW = 0.3  # bar
# default: 0.3

# the least tractive / electric braking force (abs. value) that the loco can exert
# if a lower value is calculated, it is rounded down to zero
TRACTION_CUT_OFF = 500  # N
# default: 500

# speed, at which locomotive parking brake (i.e. direct pneumatic brake) is applied
PARKING_BRAKE_AUTOMATIC_ENGAGE = 1.0  # km/h
# default: 1.0
