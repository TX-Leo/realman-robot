import socket

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = '192.168.10.18'
# host = '192.168.10.19'

port = 8080
print('connecting...')
client.connect((host, port))
print('connected')

command = '{"command":"get_current_arm_state"}'
client.send(command.encode('utf-8'))
response = client.recv(1024).decode()
print(response)

# point1= '{"command":"movej","joint":[-41395,195,-2699,103268,872,74955,12639],"v":50,"r":0}\r\n'
 
# point2= '{"command":"movej","joint":[-42635,5399,9327,108735,-766,64883,21533],"v":30,"r":0}\r\n'
 
# point3= '{"command":"movel","pose":[181030,-121700,225700,3132,16,2189],"v":10,"r":0}\r\n'
 
# point4= '{"command":"movel","pose":[181030,-121700,265770,3132,16,2189],"v":10,"r":0}\r\n'
 
# point5= '{"command":"movej","joint":[-42845,32180,-41576,52599,21931,100707,20650],"v":30,"r":0}\r\n'
 
# point6= '{"command":"movel","pose":[154270,-293080,299560,3133,16,2189],"v":10,"r":0}\r\n'
 
# point7= '{"command":"movel","pose":[154270,-293080,354680,3133,16,2189],"v":10,"r":0}\r\n'


 
# data1 = client.recv(1024).decode()
# time.sleep(5)
# print(data1)
 
# client.send(point2.encode('utf-8'))
# data1 = client.recv(1024).decode()
# time.sleep(0.5)
 
# client.send(point3.encode('utf-8'))
# data1 = client.recv(1024).decode()
# time.sleep(0.5)
 
# speed_close = '{"command":"write_single_register","port":1,"address":264,"data":1,"device":1}\r\n'
 
# speed_100 = '{"command":"write_single_register","port":1,"address":262,"data":100,"device":1}\r\n'
# client.send(speed_100.encode('utf-8'))
# data3 = client.recv(1024).decode()
# time.sleep(0.5)
 
# str_1000= '{"command":"write_single_register","port":1,"address":261,"data":1000,"device":1}\r\n'
# client.send(str_1000.encode('utf-8'))
# data6 = client.recv(1024).decode()
# time.sleep(0.5)
 
# client.send(speed_close.encode('utf-8'))
# data2 = client.recv(1024).decode()
# time.sleep(0.5)
 
# client.send(point4.encode('utf-8'))
# data1 = client.recv(1024).decode()
# time.sleep(0.5)
 
# client.send(point5.encode('utf-8'))
# data1 = client.recv(1024).decode()
# time.sleep(0.5)
 
# client.send(point6.encode('utf-8'))
# data1 = client.recv(1024).decode()
# time.sleep(0.5)
# str_0= '{"command":"write_single_register","port":1,"address":261,"data":0,"device":1}\r\n'
# client.send(str_0.encode('utf-8'))
# data4 = client.recv(1024).decode()
# time.sleep(0.5)
# client.send(speed_close.encode('utf-8'))
# data2 = client.recv(1024).decode()
# time.sleep(0.5)
# client.send(point7.encode('utf-8'))
# data1 = client.recv(1024).decode()
# time.sleep(0.5)
# client.close()
