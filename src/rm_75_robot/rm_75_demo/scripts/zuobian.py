import time
import json
import socket
#
json.base ='{"command":"movej","joint":[0,0,0,0,0,0,0],"v":10,"r":0}'
json.base2 ='{"command":"movej","joint":[0,30000,60,0,0,0,160000],"v":10,"r":0}'
# json.dase ='{"command":"movej","joint":[0,0,0,0,0,0],"v":50,"r":0}\r\n'
# json.point1_2 = '{"command":"movej","pose":[0,0,150,0,5000,0],"v":10,"r ":0}\r\n'

client1 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host1 = '192.168.10.18'
port1 = 8080
client1.connect((host1, port1))
#
client1.send(json.base.encode('utf-8'))
data1 = client1.recv(1024).decode()
time.sleep(0.1)
print("base", data1)

time.sleep(2)
client1.send(json.base2.encode('utf-8'))
data2 = client1.recv(1024).decode()
print("base2", data2)

time.sleep(0.5)
#print("base2", data1)
client1.close()
#
#client1 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# host1 = '192.168.1.18'
# port1 = 8080
# client1.connect((host1, port1))
#
# client1.send(json.dase.encode('utf-8'))
# data1 = client1.recv(1024).decode()
# time.sleep(0.1)
# print("dase", data1)
# time.sleep(0.1)
# client1.close()
