import serial

# 打开串口
ser = serial.Serial('/dev/ttyUSB0', 9600)

def to_hex(value):
    value_hex = hex(value)  # 将整数转换为十六进制字符串
    value_int = int(value_hex, 16)  # 将十六进制字符串转换回整数
    return value_int

def to_low(value):
    low_byte = value & 0xFF
    return to_hex(low_byte)

def to_high(value):
    high_byte = (value >> 8) & 0xFF 
    return to_hex(high_byte)

def get_angle(response):
    # response = b'UU\x06\x15\x01\x01\xec\x01'
    low_byte = response[-2]  # 获取倒数第二个字节，即低八位
    high_byte = response[-1]  # 获取最后一个字节，即高八位
    angle = (high_byte << 8) | low_byte  # 合并低八位和高八位
    return angle
    # print("Angle (Decimal):", angle)

# 控制舵机转动
def servo_move(time, servo_id, angle):
    cmd = bytearray([0x55, 0x55, 0x08, 0x03, 0x01, to_low(time), to_high(time), to_hex(servo_id), to_low(angle), to_high(angle)])
    ser.write(cmd)
    print("Control Servo Move")

# 获取舵机角度位置
def get_servo_angle(servo_id):
    cmd = bytearray([0x55, 0x55, 0x04, 0x15, 0x01, to_hex(servo_id)])
    ser.write(cmd)
    response = ser.read(8)  # 读取 6 字节的回复数据
    print(f'response:\n{response}')
    angle = get_angle(response)
    print(f"Get Servo Angle: {angle}")

get_servo_angle(1)  # 获取舵机 ID 为 1 的舵机的角度位置
servo_move(1000, 2, 300)  # 控制舵机 ID 为 1 的舵机转动到 90 度的位置

# 关闭串口
ser.close()