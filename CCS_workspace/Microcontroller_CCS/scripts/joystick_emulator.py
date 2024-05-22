import serial

ser = serial.Serial('/dev/ttyACM0', 115200, 8, "E", 1, 1)  # open serial port
print(ser.name)         # check which port was really used
ser.write(b'debug\n')     # write a string
print(ser.readline())
print(ser.readline())

ser.write(bytearray.fromhex("08 00 08 00 00 0A"))
#ser.write(b'aaaaa\n')
print(ser.readline().hex())
print(ser.readline())
ser.write(b'debug\n')     # write a string
print(ser.readline())
print(ser.readline())
ser.close()             # close port