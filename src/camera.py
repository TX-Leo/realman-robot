#!/usr/bin/env python

import numpy as np
import cv2
import time
import pyrealsense2 as rs

class CamIntrinsic(object):
    def __init__(self,intrinsic):
        self.fx = intrinsic[0]
        self.fy = intrinsic[1]
        self.cx = intrinsic[2]
        self.cy = intrinsic[3]
        self.intrinsic_matrix = np.array([
            [self.fx, 0, self.cx],
            [0, self.fy, self.cy],
            [0, 0, 1]
        ])

class RealSense(object):

    def __init__(self,width,height,depth_scale=None,intrinsic=None):
        self.width = width
        self.height = height
        if intrinsic:
            self.intrinsic = CamIntrinsic(intrinsic)
        else:
            self.intrinsic = self.init_intrinsic()
        if depth_scale:
            self.depth_scale = depth_scale
        else:
            self.depth_scale = self.init_depth_scale()

    def start_rs(self):
        self.pipeline = rs.pipeline()
        self.config = rs.config()
        self.config.enable_stream(rs.stream.depth, self.width, self.height, rs.format.z16, 30)
        self.config.enable_stream(rs.stream.color, self.width, self.height, rs.format.bgr8, 30)
        self.profile = self.pipeline.start(self.config)

    def close_rs(self):
        self.pipeline.stop()
        cv2.destroyAllWindows()

    def init_intrinsic(self):
        profile = self.pipeline.get_active_profile()
        color_stream = profile.get_stream(rs.stream.color)
        intrinsics = color_stream.as_video_stream_profile().get_intrinsics()
        return CamIntrinsic([intrinsics.fx, intrinsics.fy, intrinsics.ppx, intrinsics.ppy])
    
    def init_depth_scale(self):
        depth_sensor = self.profile.get_device().first_depth_sensor()
        depth_scale = depth_sensor.get_depth_scale()
        return depth_scale
    
        # print("内参矩阵:")
        # print(f"Width: {intrinsics.width}")
        # print(f"Height: {intrinsics.height}")
        # print(f"FX: {intrinsics.fx}")
        # print(f"FY: {intrinsics.fy}")
        # print(f"CX: {intrinsics.ppx}")
        # print(f"CY: {intrinsics.ppy}")
        # print("畸变参数:")
        # print(f"K1: {intrinsics.coeffs[0]}")
        # print(f"K2: {intrinsics.coeffs[1]}")
        # print(f"P1: {intrinsics.coeffs[2]}")
        # print(f"P2: {intrinsics.coeffs[3]}")
        # print(f"K3: {intrinsics.coeffs[4]}")

    def capture_rgb(self,save_path=None):
        frames = self.pipeline.wait_for_frames()
        color = frames.get_color_frame()
        rgb_img=np.asarray(color.get_data())
        if save_path is not None:
            cv2.imwrite(save_path,rgb_img)
        return rgb_img
    
    def capture_d(self,save_path=None):
        frames = self.pipeline.wait_for_frames()
        depth = frames.get_depth_frame()
        d_img=np.asarray(depth.get_data())
        if save_path is not None:
            cv2.imwrite(save_path,d_img)
        return d_img

    def capture_rgbd(self,rgb_save_path=None,d_save_path=None):
        frames = self.pipeline.wait_for_frames()
        color = frames.get_color_frame()
        depth = frames.get_depth_frame()
        rgb_img=np.asarray(color.get_data())
        d_img=np.asarray(depth.get_data())
        if rgb_save_path is not None:
            cv2.imwrite(rgb_save_path,rgb_img)
        if d_save_path is not None:
            cv2.imwrite(d_save_path,d_img)
        return rgb_img,d_img

    def capture_video(self,duration,fps,save_path=None):
        fourcc = cv2.VideoWriter_fourcc(*"MP4V")
        out = cv2.VideoWriter(save_path, fourcc, fps, (self.width, self.height))
        # Record for specified duration
        start_time = time.time()
        while time.time() - start_time < duration:
            frames = self.pipeline.wait_for_frames()
            depth_frame = frames.get_depth_frame()
            color_frame = frames.get_color_frame()
            if not depth_frame or not color_frame:
                continue
            # Convert depth and color frames to OpenCV images
            depth_image = np.asanyarray(depth_frame.get_data())
            color_image = np.asanyarray(color_frame.get_data())
            # # Write combined depth and color image (optional)
            # combined_image = np.hstack((depth_image, color_image))
            # out.write(combined_image)
            
            # Write only color image
            out.write(color_image)
        out.release()

    def create_point_cloud_from_depth_image(self, depth, organized=True):
        """ Generate point cloud using depth image only.

            Input:
                depth: [numpy.ndarray, (H,W), numpy.float32]
                    depth image
                organized: bool
                    whether to keep the cloud in image shape (H,W,3)

            Output:
                cloud: [numpy.ndarray, (H,W,3)/(H*W,3), numpy.float32]
                    generated cloud, (H,W,3) for organized=True, (H*W,3) for organized=False
        """
        assert (depth.shape[0] == self.height and depth.shape[1] == self.width)
        xmap = np.arange(self.width)
        ymap = np.arange(self.height)
        xmap, ymap = np.meshgrid(xmap, ymap)
        points_z = depth / self.depth_scale
        points_x = (xmap - self.intrinsic.cx) * points_z / self.intrinsic.fx
        points_y = (ymap - self.intrinsic.cy) * points_z / self.intrinsic.fy
        cloud = np.stack([points_x, points_y, points_z], axis=-1)
        if not organized:
            cloud = cloud.reshape([-1, 3])
        return cloud

def test():
    pass

if __name__ == "__main__":
    test()