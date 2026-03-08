import serial
import time

# Configure the serial port
ser = serial.Serial(port='/dev/ttyACM1', baudrate=115200, timeout=1)

def run_adder(a, b, cin):
    # Ensure port is open
    if not ser.is_open:
        ser.open()

    # Send data to ZedBoard formatted as "a b cin\n"
    cmd = f"{a} {b} {cin}\n"
    ser.write(cmd.encode())

    # Read the response
    line = ser.readline().decode().strip()
    print({line})
    
    if line.startswith("RES"):
        # Parse the "RES sum carry" string
        _, res_sum, res_carry = line.split()
        print(f"Inputs: a={a}, b={b}, cin={cin}")
        print(f"Result -> Sum: {res_sum}, Carry: {res_carry}")
    else:
        print(f"DEBUG: I received this instead: '{line}'") # Add this line

# Test it
try:
    val_a = int(input("Enter value for a (0-255): "))
    val_b = int(input("Enter value for b (0-255): "))
    val_c = int(input("Enter value for cin (0-1): "))
    
    run_adder(val_a, val_b, val_c)

finally:
    ser.close()
