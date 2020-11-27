import serial
import sys
import time
import csv
import os

# When running this program, specify the arduino port as a command line argument ex:
# * python motortest.py COM5
# * Run `python -m serial.tools.list_ports` to list the available ports

data_folder = "data"
lines = []

with serial.Serial(sys.argv[1], 9600, timeout=1) as ser:
    time.sleep(2)

    ser.write(b";STRT TST;")
    ser.flushInput()
    print("Requested Test Initiation")

    line = ""
    while line != ";STRT;":
        line = ser.readline().decode('utf-8').rstrip()
    lines.append(line)

    print("Test Initiated")

    while line != ";END;":
        line = ser.readline().decode('utf-8').rstrip()
        if line:
            lines.append(line)

print("Test Complete")
tests = {}
current_test = ""
for line in lines:
    if line.endswith(";"):
        current_test = line.replace(";", "")
    else:
        parsed_line = list(map(float, line.split(" ")))
        if not current_test in tests:
            tests[current_test] = [["speed", "amps", "volts"]]
        tests[current_test].append(parsed_line)

for test in tests:
    data_path = os.path.join(data_folder, time.time())
    if not os.path.exists(data_path):
        os.makedirs(data_path)
    with open(os.path.join(data_path, test+".csv"),"w+") as test_csv:
        csvWriter = csv.writer(test_csv, delimiter=',')
        csvWriter.writerows(tests[test])
print("Data Saved")
