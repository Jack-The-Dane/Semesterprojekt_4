import serial
import csv

ser = serial.Serial('COM6', 115200, 8, "E", 1, 1)  # open serial port
print(ser.name)                                    # check which port was really used
ser.write(b'debug\n')                              # write a string
print(ser.readline())
array = []

ser.write(bytearray.fromhex("10 80 10 80 80 0A"))
print(ser.readline())
array.append(ser.readline())
array.append(ser.readline())
ser.write(serial.to_bytes(b'debug\n'))             # write a string
print(ser.readline())
ser.close()                                        # close port

with open('joystick.csv', 'w') as file:
    file.write("PWM_pan_value, PWM_tilt_value, Encoder_pan_value, Encoder_tilt_value")
    file.write('\n')
    for line in array:
        file.write(str(line[0],line[1],line[2],line[3]))
        file.write('\n')