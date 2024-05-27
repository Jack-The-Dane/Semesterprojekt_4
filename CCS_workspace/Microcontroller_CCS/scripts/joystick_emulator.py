import serial
import csv
import numpy as np

# Create a list of numbers from a mathematical expression or code statement and an interval to calculate the function within. THe function must depend only on x.
def list_creator(function: str, start, stop, step):
    list = [eval(function) for x in np.arange(start=start, stop=stop, step=step)]
    return list
    
def scale_and_format(unformatted):
    scaled_vels = scale_list(unformatted)
    formatted_vels = format_list(scaled_vels)
    return formatted_vels

def scale_list(unscaled):
    scaled_vels = [int((i/max(unscaled)) * ((2**12/2)-1) + (2**12/2)) for i in unscaled]
    return scaled_vels

def format_list(unformatted):
    formatted_vels = [format((((i << 1) & 0xFF00) + (i & 0x7F))+32896,'4x') for i in unformatted]
    return formatted_vels


def send_tilt_velocities(vels):
    array = []
    for line in vels:
        ser.write(bytearray.fromhex("10 80" + line + "80 0A"))
        print(bytearray.fromhex("10 80" + line + "80 0A"))
        # Read and print any response
        line = ser.readline().hex()
        while(len(line) < 12):
            line += ser.readline().hex()
        array.append(line)
        line = ser.readline().hex()
        print(array[-1])
        while(len(line) < 10):
            line += ser.readline().hex()
        array.append(line)
        print(array[-1])
        line = ser.readline().hex()
        while(len(line)<4):
            line += ser.readline().hex()
        array.append(line)
    return array

# Step response:
step_input = format_list(list_creator("int(2**12/2) if x < 40 else int(2**12 * 0.75)", 0, 120, 1))

# Speed up and slow down:
parabol_velocities = scale_and_format(list_creator("15.82*x - 8.938*x**2", 0, 1.77, 0.025))




# Change this variable to send something different to the tilt axis.
tilt_vels = step_input

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
    
    array = send_tilt_velocities(tilt_vels)

    # Send debug message (converted to bytes for serial communication)
    ser.write(serial.to_bytes(b'debug\n'))
    # Read and print any response from the device     
    response = ser.readline().decode('utf-8').strip()
    print("Device response:", response)
    # Close port 
    ser.close()
    print("Serial port closed successfully")

    with open('joystick.csv', 'w') as file:
        file.write("ADC_pan_value, ADC_tilt_value, Button_value, Encoder_tilt_value, Encoder_pan_value, Tilt_Velocity")
        file.write('\n')
        for num, line in enumerate(array):
            if(len(line)==12):
                file.write(str(int(line[0:4],16))+", "+ str(int(line[4:8],16)) + ", " + str(int(line[8:10],16)) + ", ")
            elif(len(line)==10):
                file.write(str(int(line[0:4],16))+", "+ str(int(line[4:8],16)) + ", ")
            elif(len(line)==4):
                file.write(str(int(line[0:2],16)))
                file.write('\n')
            else:
                print("Weird line length: ", len(line), " On line: ", num)
                print(line)
        
#+", "+ str(int(line[4:8],16))
        
