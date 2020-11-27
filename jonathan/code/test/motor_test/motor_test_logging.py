import serial
import argparse
import time
import csv
import os

parser = argparse.ArgumentParser(description='Gather motor data from an arduino')
parser.add_argument('port', type=str, help='Arduino serial port')
parser.add_argument('--save-dir', type=str, default="data", help="Arduino serial port (Default: 'data/')")

args = parser.parse_args()

# When running this program, specify the arduino port as a command line argument ex:
# * python motor_test_logging.py COM5
# * Run `python -m serial.tools.list_ports` to list the available ports

data_folder = "data"
lines = []

with serial.Serial(args.port, 9600, timeout=1) as ser:
    time.sleep(2)

    ser.write(b";STRT TST;")
    ser.flushInput()
    print("Sent Arduino Test Initiation Request")

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


data_path = os.path.join(data_folder, str(time.time()))
if not os.path.exists(data_path):
    os.makedirs(data_path)

for test in tests:
    with open(os.path.join(data_path, test+".csv"), "w+", newline='') as test_csv:
        csvWriter = csv.writer(test_csv, delimiter=',')
        csvWriter.writerows(tests[test])
print("Test Results Saved")
