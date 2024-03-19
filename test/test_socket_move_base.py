import socket
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = '192.168.10.10'
port = 31001
print('connecting...')
client.connect((host, port))
print('connected')

command = '/api/robot_info'
client.send(command.encode('utf-8'))
response = client.recv(1024).decode()
print(response)

command = '/api/robot_status'
client.send(command.encode('utf-8'))
response = client.recv(1024).decode()
print(response)

# command = '/api/map/list'
# client.send(command.encode('utf-8'))
# response = client.recv(1024).decode()
# print(response)



# point2= '/api/move?marker=071901'
# client.send(point2.encode('utf-8'))
# data1 = client.recv(1024).decode()
# point3='/api/move?marker=071902'
# client.send(point3.encode('utf-8'))
# data1 = client.recv(1024).decode()
