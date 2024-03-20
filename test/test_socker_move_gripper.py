import socket
import time

def send_cmd(client, cmd_6axis):
    client.send(cmd_6axis.encode('utf-8'))
    # Optional: Receive a response from the server
    # _ = client.recv(1024).decode()
    return True

# IP and port configuration
ip = '192.168.10.18'
port_no = 8080

# Create a socket and connect to the server
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect((ip, port_no))
print("机械臂第一次连接", ip)

time.sleep(3)


point6_00 = '{"command":"set_tool_voltage","voltage_type":3}\r\n'
_ = send_cmd(client, cmd_6axis=point6_00)
time.sleep(3)
print("//设置工具端电源输出 24V")

point6_00 = '{"command":"set_modbus_mode","port":1,"baudrate":115200,"timeout ":2}\r\n'
_ = send_cmd(client, cmd_6axis=point6_00)
time.sleep(2)
print("配置通讯端口 ModbusRTU 模式")

point6_00 = '{"command":"write_single_register","port":1,"address":256,"data":1, "device":1}\r\n'
_ = send_cmd(client, cmd_6axis=point6_00)
time.sleep(2)
print("  执行初始化成功")
point6_00 = '{"command":"write_single_register","port":1,"address":257,"data":30, "device":1}\r\n'
_ = send_cmd(client, cmd_6axis=point6_00)
time.sleep(2)
print(" 设置30% 力值 （写操作）")

while True:
    point6_00 = '{"command":"write_single_register","port":1,"address":259,"data":500, "device":1}\r\n'
    _ = send_cmd(client, cmd_6axis=point6_00)
    time.sleep(3)
    print("设置 500 位置 ")
    point6_00 = '{"command":"write_single_register","port":1,"address":259,"data":1000, "device":1}\r\n'
    _ = send_cmd(client, cmd_6axis=point6_00)
    time.sleep(3)
    print("设置 1000 位置 ")
    point6_00 = '{"command":"write_single_register","port":1,"address":259,"data":200, "device":1}\r\n'
    _ = send_cmd(client, cmd_6axis=point6_00)
    time.sleep(3)
    print("设置 200 位置 ")

