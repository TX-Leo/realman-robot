#!/usr/bin/env python
# coding=utf-8
import numpy as np
import cv2
import pyrealsense2 as rs

cam0_path = r'/home/rm/catkin_ws/images/' # 提前建立好的存储照片文件的目录

def displayD435():
    pipeline = rs.pipeline()
    config = rs.config()
    config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)
    pipeline.start(config)
    global count
    count = 1
    try:
        while True:
            frames = pipeline.wait_for_frames()
            color_frame = frames.get_color_frame()
            if not color_frame:
                continue
            color_image = np.asanyarray(color_frame.get_data())
            callback(color_image)
    finally:
        pipeline.stop()
        cv2.destroyAllWindows()

def test_realsenseD435():
    pipeline = rs.pipeline()
    config = rs.config()
    config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30) # 1280*720
    pipeline.start(config)
    frames = pipeline.wait_for_frames()
    color_frame = frames.get_color_frame()
    color_image = np.asanyarray(color_frame.get_data())
    scaling_factor = 2.0
    cv_img = cv2.resize(color_image, None, fx=scaling_factor, fy=scaling_factor, interpolation=cv2.INTER_AREA)
    # cv2.imshow("Capture_Video", cv_img)  # 窗口显示，显示名为 Capture_Video
    cv2.imwrite(cam0_path + '/' + 'test1' + '.jpg', cv_img)
    pipeline.stop()
    cv2.destroyAllWindows()

def get_intrinsics():
    # 创建深度和颜色流的配置
    config = rs.config()
    config.enable_stream(rs.stream.depth, 0, 0, rs.format.z16, 30)
    config.enable_stream(rs.stream.color, 0, 0, rs.format.bgr8, 30)

    # 启动 RealSense 管道
    pipeline = rs.pipeline()
    profile = pipeline.start(config)

    # 获取深度和颜色流的相机参数
    depth_sensor = profile.get_device().first_depth_sensor()
    depth_scale = depth_sensor.get_depth_scale()

    color_stream = profile.get_stream(rs.stream.color)
    intrinsics = color_stream.as_video_stream_profile().get_intrinsics()

    # 打印相机参数
    print("内参矩阵:")
    print(f"Width: {intrinsics.width}")
    print(f"Height: {intrinsics.height}")
    print(f"FX: {intrinsics.fx}")
    print(f"FY: {intrinsics.fy}")
    print(f"CX: {intrinsics.ppx}")
    print(f"CY: {intrinsics.ppy}")
    print("畸变参数:")
    print(f"K1: {intrinsics.coeffs[0]}")
    print(f"K2: {intrinsics.coeffs[1]}")
    print(f"P1: {intrinsics.coeffs[2]}")
    print(f"P2: {intrinsics.coeffs[3]}")
    print(f"K3: {intrinsics.coeffs[4]}")
    # 停止管道并关闭窗口
    pipeline.stop()

if __name__ == '__main__':
    test_realsenseD435()
