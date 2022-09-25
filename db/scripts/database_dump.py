import mysql.connector
from trackmap import load_credentials

CREDENTIALS_FILE = ".\\..\\..\\secrets\\database\\local_2022-04-01.json"
credentials = load_credentials(CREDENTIALS_FILE)


def custom_repr(obj):
    if obj is None:
        return "''"
    return repr(obj)


connection = mysql.connector.connect(
    host=credentials["host"],
    user=credentials["user"],
    password=credentials["password"],
    database=credentials["database"]
)
cur = connection.cursor()

cur.execute("SHOW FULL TABLES WHERE Table_type = 'BASE TABLE';")
data = []
tables = [table for table, *_ in cur]

for table in tables:
    if "cv" not in table:
        data.append(f"DELETE FROM `{table}`;\n")
        cur.execute(f"SELECT * FROM `{table}`;")
        insert = f"INSERT INTO `{table}` ({', '.join(cur.column_names)}) "
        for record in cur:
            data.append(insert + f"VALUES ({', '.join(map(custom_repr, record))});\n")
cur.close()
connection.close()

filename = "../2021-10-26/utils/db.sql"

with open(filename, "wt") as f:
    f.writelines(data)
