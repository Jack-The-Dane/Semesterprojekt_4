import serial
import csv

velocities_tilt = ["10 80", "18 80"]
#velocities_pan = []

ser = serial.Serial('COM6', 115200, 8, "E", 1, 1)  # open serial port
array = []
# Check if serial port was opened successfully
if ser.is_open:
    print("Serial port opened successfully on: ", ser.name)           
    # Send debug message (converted to bytes for serial communication)
    ser.write(b'debug\n')   
    # Read and print any response from the device
    response = ser.readline().decode('utf-8').strip()
    print("Device response:", response)
    # Send a byte array using to_bytes

    for line in velocities_tilt:
        ser.write(bytearray.fromhex("10 80" + line + "80 0A"))
        # Read and print any response
        array.append(ser.readline().hex())
        array.append(ser.readline().hex())
        print("Device response:", array)
    
    for i in range(200):
        ser.write(bytearray.fromhex("10 80" + velocities_tilt[1] + "80 0A"))
        # Read and print any response
        array.append(ser.readline().hex())
        array.append(ser.readline().hex())
        

        
    # Send debug message (converted to bytes for serial communication)
    ser.write(serial.to_bytes(b'debug\n'))
    # Read and print any response from the device     
    response = ser.readline().decode('utf-8').strip()
    print("Device response:", response)
    # Close port 
    ser.close()
    print("Serial port closed successfully")

with open('joystick.csv', 'w') as file:
    file.write("ADC_pan_value, ADC_tilt_value, Button_value, Encoder_pan_value, Encoder_tilt_value")
    file.write('\n')
    for line in array:
        if(len(line)==12):
            file.write(str(line[0:4])+", "+ str(line[4:8]) + ", " + str(line[8:10] + ", "))
        elif(len(line)==10):
            file.write(str(line[0:4])+", "+ str(line[4:8]))
            file.write('\n')
        