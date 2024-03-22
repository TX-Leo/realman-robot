import socket
import threading
import serial
import pyrealsense2 as rs
import cv2
import time
import numpy as np

def record_realsense_video(output_file, width=640, height=480, fps=30, duration=10):
    pipeline = rs.pipeline()
    config = rs.config()
    config.enable_stream(rs.stream.color, width, height, rs.format.rgb8, fps)
    config.enable_stream(rs.stream.depth, width, height, rs.format.z16, fps)
    pipeline.start(config)
    profile = pipeline.get_active_profile()
    video_stream = profile.get_stream(rs.stream.color)
    fourcc = cv2.VideoWriter_fourcc(*'XVID')
    video_writer = cv2.VideoWriter(output_file, fourcc, fps, (width, height))
    start_time = time.time()
    end_time = start_time + duration
    while time.time() < end_time:
        frames = pipeline.wait_for_frames()
        color_frame = frames.get_color_frame()
        if not color_frame:
            continue
        color_image = np.asanyarray(color_frame.get_data())
        video_writer.write(color_image)
    video_writer.release()
    pipeline.stop()

def move_robot():
    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    host = '192.168.10.10'
    port = 31001
    print('connecting...')
    client.connect((host, port))
    print('connected')
    command= '/api/move?marker=start_point'
    client.send(command.encode('utf-8'))
    response = client.recv(1024).decode()
    print(response)

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
    
    ser = serial.Serial('/dev/ttyUSB0', 9600)
    get_servo_angle(1)  # 获取舵机 ID 为 1 的舵机的角度位置
    servo_move(500, 1, 300)  # 控制舵机 ID 为 1 的舵机转动到 90 度的位置
    time.sleep(1)
    servo_move(500, 2, 300)  # 控制舵机 ID 为 1 的舵机转动到 90 度的位置
    time.sleep(1)
    servo_move(500, 1, 800)  # 控制舵机 ID 为 1 的舵机转动到 90 度的位置
    time.sleep(1)
    servo_move(500, 2, 800)  # 控制舵机 ID 为 1 的舵机转动到 90 度的位置
    time.sleep(1)

    # 关闭串口
    ser.close()

# 创建线程来同时执行录制视频和机器人移动
def run_record_and_move():
    # 创建录制视频的线程
    video_thread = threading.Thread(target=record_realsense_video, args=('/home/rm/catkin_ws/images/test.avi', 640, 480, 30, 15))

    # 创建控制机器人移动的线程
    # move_thread = threading.Thread(target=move_robot)

    # 启动线程
    video_thread.start()
    # move_thread.start()

    # 等待线程结束
    video_thread.join()
    # move_thread.join()


# 示例用法
run_record_and_move()



