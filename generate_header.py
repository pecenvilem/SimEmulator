import json
import os
import time

header = """// specifications for CAN data transmissions
// DON'T use in-line comments after '#define'!!!

// CANID - message code (unknown codes are treated as DEFAULT_ATP_IN)
// CANDLC - message length [bytes] (defaults to 1, if omitted)
// CANMULT - message data multiplier (defaults to 1, if omitted)
// CANSGN - message data is a signed type: 1-True, 0-False (defaults to False, if omitted)

"""

with open("can_config.json", "rt") as f:
    data = json.load(f)

try:
    os.rename("can_config.h", "can_config({}).h.old".format(time.strftime("%Y_%m_%d-%H-%M")))
except (FileNotFoundError, FileExistsError) as e:
    pass

with open("can_config.h", "wt") as f:
    f.write(header)
    f.write("// Auto-generated from 'can_config.json' file on: {}\n\n".format(time.strftime("%Y_%m_%d %H:%M")))

    for key in data:
        if type(item := data[key]) == dict:
            lines = []
            try:
                s = "".join(["CANID_", key]).replace(" ", "_")
                s = "#define {} {}\n".format(s, item["id"])
                lines.append(s)
            except KeyError:  # no message ID defined
                break  # skipp this entry

            s = "".join(["CANDLC_", key]).replace(" ", "_")
            s = "#define {} {}\n".format(s, item.get("length", 1))
            lines.append(s)

            s = "".join(["CANMULT_", key]).replace(" ", "_")
            s = "#define {} {}\n".format(s, item.get("multiplier", 1))
            lines.append(s)

            s = "".join(["CANSGN_", key]).replace(" ", "_")
            if item.get("signed", False):
                s = "#define {} 1\n".format(s)
            else:
                s = "#define {} 0\n".format(s)
            lines.append(s)

            lines.append("\n")
            f.writelines(lines)
