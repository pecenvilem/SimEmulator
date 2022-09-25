import json
import csv
import os
import re
from typing import Dict

import mysql

from trackmap import load_credentials

file_name = ".\\db\\2022-04-01\\balises.json"


def insert_headers(balise_list):
    header = {
        "Q_UPDOWN": "Up link telegram",
        "M_VERSION": "Class 1",
        "Q_MEDIA": "Balise",
        "N_PIG": None,
        "N_TOTAL": None,
        "M_DUP": "No duplicates",
        "M_MCOUNT": "The telegram fits with all telegrams of the same balise group",
        "NID_C": None,
        "NID_BG": None,
        "Q_LINK": "Linked",
        "NID_PACKET": 255,
    }

    for balise in balise_list:
        balise[2] = header.copy()


def load_infra_data(infra_file):
    variable_regex = re.compile(
        r"((?:NID|NC|A|D|G|L|M|N|Q|T|V|X)_(?:[A-Z]+(?:_[A-Z]+)*)) *= *(\d+)?"
    )

    with open(infra_file, "rt") as f:
        reader = csv.DictReader(f, delimiter=";")

        infra_data = {}
        groups = {}

        for record in reader:
            if record["feature"] == "balise":
                variables = variable_regex.findall(record["detail"])
                d = {variable[0]: int(variable[1]) for variable in variables}
                try:
                    group_id = (d["NID_C"], d["NID_BG"])
                except KeyError as e:
                    raise ValueError(f"Can't identify all balise properties. Encountered error: {e}")
                if group_id in groups:
                    groups[group_id] += 1
                else:
                    groups[group_id] = 0
                infra_data[float(record["mileage"])] = d

        for group, count in groups.items():
            for position, balise_content in infra_data.items():
                group_id = (balise_content["NID_C"], balise_content["NID_BG"])
                if group_id == group:
                    infra_data[position]["N_TOTAL"] = count

    return infra_data


def resolve_variable(variable_name, value, known_variables):
    for variable in known_variables:
        if variable["id"] == variable_name:
            for value_string, meaning in variable["spec"].items():
                if meaning == value:
                    try:
                        return int(value_string.replace(" ", ""), base=2)
                    except ValueError:
                        return int(value_string.replace(" ", ""), base=10)

    raise ValueError(f"Unknown value {value} for variable {variable_name}!")


def get_length(variable_name, known_variables):
    for variable in known_variables:
        if variable["id"] == variable_name:
            return variable["length"]
    raise KeyError(f"Unknown variable {variable_name}!")


def to_etcs(telegram: Dict, known_variables):
    total_length = 0
    output = 0
    for variable, value in telegram.items():
        if type(value) != int:
            value = resolve_variable(variable, value, known_variables)
        length = get_length(variable, known_variables)
        total_length += length
        output = (output << length) + value
    padding_length = 8 - total_length % 8
    output = (output << padding_length) + 2 ** padding_length - 1
    return f"{output:x}"


data = load_infra_data(".\\db\\2022-04-01\\utils\\infra.csv")
variables = []
os.chdir(".\\etcs_language\\v230d\\variables")
for file in os.listdir():
    with open(file, "rt") as f:
        variables.extend(json.load(f))
os.chdir(".\\..\\..\\..")


with open(file_name, "rt") as f:
    balises = json.load(f)

insert_headers(balises)

for i, content in enumerate(balises):
    db_id, db_position, db_telegram, *_ = content
    for csv_position, csv_fields in data.items():
        if db_position == csv_position:
            db_telegram.update(csv_fields)
            del balises[i][3:]
            balises[i].append(to_etcs(db_telegram, variables))
            break

with open(file_name, "wt") as f:
    json.dump(balises, f, indent=4)

CREDENTIALS_FILE = ".\\secrets\\database\\local_2022-04-01.json"
credentials = load_credentials(CREDENTIALS_FILE)


def get_default_connection():
    return mysql.connector.connect(
        host=credentials["host"],
        user=credentials["user"],
        password=credentials["password"],
        database=credentials["database"]
    )


def set_telegrams(balises, connection):
    crs = connection.cursor()
    for db_id, position, telegram_dict, telegram_hex in balises:
        querry = f"""UPDATE `balise` SET `balise`.defaultTelegram = "{telegram_hex}" WHERE `balise`.id = "{db_id}";"""
        crs.execute(querry)
    connection.commit()


conn = get_default_connection()
set_telegrams(balises, conn)