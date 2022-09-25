import re
import os, sys
import json
import datetime
from typing import List, Tuple

#################### INPUT VARIABLES ###########################

# use different file for output!
input_file = "..\\2022-04-01 ProETCS Dump.sql"
output_file = "2022-04-01 ProETCS Dump.sql"

# regex patterns which should be filtered
# !!THE WHOLE LINE containing a match will be dropped
illegal = [
    r"utf8mb4_0900_ai_ci",
]

################################################################

# warn the user and confirm
print(f"WARINNG! Contents of file {os.path.join(os.getcwd(), output_file)} will be overwriten!")
if input("Confirm? [Y/n] >> ") != "Y":
    print("Operation interrrupted")
    sys.exit()

# generate regex objects for individual lines in input
regex = [re.compile(pattern) for pattern in illegal]

# record deleted lines together with linenumber
dropped_lines: List[Tuple[int, str]] = []

with open(input_file, "rt") as f_in:
    with open(output_file, "wt") as f_out:
        # go through input file line by line
        for i, line in enumerate(f_in):
            # check for occurrences of all filtered expressions
            if any([r.search(line) for r in regex]):
                # if a match is found, skip this line, otherwise, write it to the output unchanged
                dropped_lines.append((i, line))
                continue
            f_out.write(line)

# print number of dropped lines and create .json log
print(f"Dropped {len(dropped_lines)} lines")
if dropped_lines:
    log = f"{output_file}_{datetime.datetime.now().strftime('%d_%m_%Y-%H_%M_%S')}_log.json"
    with open(log, "wt") as f:
        json.dump(dropped_lines, f)
    print(f"List of dropped lines is in {log}")



