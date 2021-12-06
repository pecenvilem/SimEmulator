import mysql.connector
from secrets import dump_host, dump_user, dump_password, dump_database


def custom_repr(obj):
    if obj is None:
        return "''"
    return repr(obj)


connection = mysql.connector.connect(
    host=dump_host,
    user=dump_user,
    password=dump_password,
    database=dump_database
)
cur = connection.cursor()

cur.execute("SHOW FULL TABLES WHERE Table_type = 'BASE TABLE';")
# cur.execute("SHOW TABLES;")
data = []
tables = []
for table, *_ in cur:
    tables.append(table)

for table in tables:
    if "cv" not in table:
        data.append(f"DELETE FROM `{table}`;\n")
        cur.execute(f"SELECT * FROM `{table}`;")
        insert = f"INSERT INTO `{table}` ({', '.join(cur.column_names)}) "
        for record in cur:
            data.append(insert + f"VALUES ({', '.join(map(custom_repr, record))});\n")
cur.close()
connection.close()

filename = "db.sql"

with open(filename, "wt") as f:
    f.writelines(data)
