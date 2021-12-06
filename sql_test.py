import mysql.connector
from secrets import db_host, db_user, db_password, db_database
from configuration import QUERY_FILE
with open(QUERY_FILE, "rt") as f:
    query = f.read()
from configuration import STARTING_NET_ELEMENT
query = query.format(STARTING_NET_ELEMENT=STARTING_NET_ELEMENT)

connection = mysql.connector.connect(
    host=db_host,
    user=db_user,
    password=db_password,
    database=db_database
)
cursor = connection.cursor()
cursor.execute(query)
data = cursor.fetchall()
print(cursor.column_names)
print(*data, sep='\n')
cursor.close()
connection.close()

total_dist = 0
for i, record in enumerate(data):
    print(i)
    element, length, intrinsic, delta, balise, balise_name, *_ = record
    if i != 0:
        prev_element, prev_length, *_ = data[i - 1]
        if prev_element != element:
            total_dist += prev_length
    if balise is not None:
        dist = total_dist + intrinsic * length + delta
        print(f"Balíza {balise_name}, vzdálenost {dist} m od počátku")
    element, length, intrinsic, delta, balise, pos_in_group, duplicate, group, def_tgmr, *_ = record
    # print(record)
    if i != 0:
        prev_element, prev_length, *_ = data[i - 1]
        if prev_element != element:
            total_dist += prev_length
    if balise is not None:

        dist = total_dist + intrinsic * length + delta
        def_tgmr = int(def_tgmr, base=16)
        i = len(f"{def_tgmr:b}")
        telegram = {
            "Q_UPDOWN": (def_tgmr & (1 << (i - 1))) >> (i - 1),  # 1 bit [1]
            "M_VERSION": (def_tgmr & (127 << (i - 8))) >> (i - 8),  # 7 bits [2-8]
            "Q_MEDIA": (def_tgmr & (1 << (i - 9))) >> (i - 9),  # 1 bit [9],
            "N_PIG": (def_tgmr & (7 << (i - 12))) >> (i - 12),  # 3 bits [10-12],
            "N_TOTAL": (def_tgmr & (7 << (i - 15))) >> (i - 15),  # 3 bits [13-15],
            # "N_TOTAL": 1,  # 3 bits [13-15],
            "M_DUP": (def_tgmr & (3 << (i - 17))) >> (i - 17),  # 2 bits [16-17],
            "M_MCOUNT": (def_tgmr & (255 << (i - 25))) >> (i - 25),  # 8 bits [18-25],
            "NID_C": (def_tgmr & (1023 << (i - 35))) >> (i - 35),  # 10 bits [26-35],
            "NID_BG": (def_tgmr & (16383 << (i - 49))) >> (i - 49),  # 14 bits [36-49],
            "Q_LINK": (def_tgmr & (1 << (i - 50))) >> (i - 50),  # 1 bit [50],
            "End of Information": {
                "NID_PACKET": 255  # 8 more bits [51-58]
            }
        }
        print(f"{def_tgmr:b}")
        print(telegram)

