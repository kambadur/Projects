import socket

ZEDBOARD_IP = "192.168.1.10"
PORT = 5005 # Matches the C code

def run_hil_adder(a, b, cin):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(1.0)

    try:
        # Send inputs
        msg = f"{a} {b} {cin}"
        sock.sendto(msg.encode(), (ZEDBOARD_IP, PORT))

        # Receive result
        data, _ = sock.recvfrom(1024)
        print(f"HIL Result: {data.decode()}")

    except socket.timeout:
        print("Error: No response from ZedBoard")
    finally:
        sock.close()

if __name__ == "__main__":
    a = int(input("a: "))
    b = int(input("b: "))
    c = int(input("cin: "))
    run_hil_adder(a, b, c)
