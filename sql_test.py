import mysql.connector
from secrets import defaut_host, defaut_user, defaut_password, defaut_database

with open("balises.sql", "rt") as f:
    query = f.read()

connection = mysql.connector.connect(
    host=defaut_host,
    user=defaut_user,
    password=defaut_password,
    database=defaut_database
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
    element, length, intrinsic, delta, balise, balise_name, *_ = record
    if i != 0:
        prev_element, prev_length, *_ = data[i - 1]
        if prev_element != element:
            total_dist += prev_length
    if balise is not None:
        dist = total_dist + intrinsic * length + delta
        print(f"Balíza {balise_name}, vzdálenost {dist} m od počátku")

