# file has to be run from the scope of the root project directory!

import mysql.connector
from trackmap import load_credentials


with open(".\\db\\2022-04-01\\utils\\balises_2022-04-01.sql", "rt") as f:
    balise_query = f.read()
with open("db/2022-04-01/utils/gradients.sql", "rt") as f:
    gradients_query = f.read()
with open("db/2022-04-01/utils/ssp.sql", "rt") as f:
    ssp_query = f.read()

# STARTING_NET_ELEMENT = "5695c0f7-ceeb-4127-8c5c-2da3a5932225"
STARTING_NET_ELEMENT = "910d1e73-4df6-4b15-9745-8c77e564c67a"


balise_query = balise_query.format(STARTING_NET_ELEMENT=STARTING_NET_ELEMENT)
gradients_query = gradients_query.format(STARTING_NET_ELEMENT=STARTING_NET_ELEMENT)
ssp_query = ssp_query.format(STARTING_NET_ELEMENT=STARTING_NET_ELEMENT)

CREDENTIALS_FILE = ".\\secrets\\database\\local_2022-04-01.json"
credentials = load_credentials(CREDENTIALS_FILE)


def get_default_connection():
    return mysql.connector.connect(
        host=credentials["host"],
        user=credentials["user"],
        password=credentials["password"],
        database=credentials["database"]
    )


def get_cursor(connection, querry):
    crs = connection.cursor()
    crs.execute(querry)
    return crs


def print_table(connection, table_name):
    querry = f"SELECT * FROM `{table_name}`"
    crs = get_cursor(connection, querry)
    print(crs.column_names)
    for i in crs:
        print(i)
    crs.close()


def print_balises(connection):
    crs = get_cursor(connection, balise_query)
    data = crs.fetchall()
    crs.close()

    balises = []

    total_dist = 0
    for i, record in enumerate(data):
        element_id, length, intrinsic, delta, balise_id, telegram = record
        if balise_id is not None:
            dist = total_dist + intrinsic * length + delta
            balises.append((balise_id, dist, telegram))
            print(f"Balíza {balise_id}, vzdálenost {dist} m od počátku. Telegram: {telegram}")
        if i != 0:
            prev_element, prev_length, *_ = data[i - 1]
            if prev_element != element_id:
                total_dist += prev_length

    return balises


def print_gradients(connection):
    crs = get_cursor(connection, gradients_query)
    data = crs.fetchall()
    print(crs.column_names)
    crs.close()
    for i in data:
        print(i)


def print_ssp(connection):
    crs = get_cursor(connection, ssp_query)
    data = crs.fetchall()
    print(crs.column_names)
    crs.close()
    for i in data:
        print(i)


def main():
    connection = get_default_connection()
    balises = print_balises(connection)
    # print_gradients(connection)
    # print_ssp(connection)
    connection.close()
    return balises


if __name__ == "__main__":
    balises = main()
