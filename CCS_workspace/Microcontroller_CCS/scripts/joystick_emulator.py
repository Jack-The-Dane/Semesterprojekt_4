import serial
import csv
import numpy as np

ser = serial.Serial('/dev/ttyACM0', 115200, 8, "E", 1, 1)  # open serial port
array = []
parabol_velocities = [15.82*t - 8.938*t**2 for t in np.arange(0, 1.77, 0.025)]

# with open('test.txt', 'w') as file:
#     for i in formatted_vels:
#         print(bin(int(i,16)))
#         file.write(bin(int(i,16)))
#         file.write('\n')

    
def scale_and_format(unformatted):
    scaled_vels = [int((i/max(unformatted)) * ((2**12/2)-1) + (2**12/2)) for i in unformatted]
    formatted_vels = [format((((i << 1) & 0xFF00) + (i & 0x7F))+32896,'4x') for i in scaled_vels]
    return formatted_vels

def send_tilt_velocities(vels):
    for line in vels:
        ser.write(bytearray.fromhex("10 80" + line + "80 0A"))
        # Read and print any response
        array.append(ser.readline().hex())
        array.append(ser.readline().hex())

ser = serial.Serial('/dev/ttyACM0', 115200, 8, "E", 1, 1)  # open serial port

# Check if serial port was opened successfully
if ser.is_open:
    print("Serial port opened successfully on: ", ser.name)           
    # Send debug message (converted to bytes for serial communication)
    ser.write(b'debug\n')   
    # Read and print any response from the device
    response = ser.readline().decode('utf-8').strip()
    print("Device response:", response)
    # Send a byte array using to_bytes
    
    send_tilt_velocities(scale_and_format(parabol_velocities))

    # Send debug message (converted to bytes for serial communication)
    ser.write(serial.to_bytes(b'debug\n'))
    # Read and print any response from the device     
    response = ser.readline().decode('utf-8').strip()
    print("Device response:", response)
    # Close port 
    ser.close()
    print("Serial port closed successfully")

with open('joystick.csv', 'w') as file:
    file.write("ADC_pan_value, ADC_tilt_value, Button_value, Encoder_tilt_value, Encoder_pan_value")
    file.write('\n')
    for line in array:
        if(len(line)==12):
            file.write(str(line[0:4])+", "+ str(line[4:8]) + ", " + str(line[8:10] + ", "))
        elif(len(line)==10):
            file.write(str(line[0:4])+", "+ str(line[4:8]))
            file.write('\n')
        else:
            print("Weird line length: ", len(line))
            print(line)
        
        
