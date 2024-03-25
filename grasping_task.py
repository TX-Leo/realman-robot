import numpy as np

from src.grasper import Grasper
from src.arm import Arm
from src.camera import RealSense

def init():
    arm =  Arm(host_ip='192.168.10.18',
               host_port=8080,
               cam2base_H_path='src/cfg/cam2base_H.csv'
               )
    
    camera = RealSense(width=1280,
                       height=720,
                       intrinsic_path='src/cfg/intrinsic.csv',
                       depth_scale_path='src/cfg/depth_scale.txt'
                       )

    camera.start_rs()
    rgb_img,d_img = camera.capture_rgbd()
    camera = camera.close_rs()

    grasper = Grasper(camera=camera,
                      arm=arm,
                      rgb_img=rgb_img,
                      d_img=d_img,
                      checkpoint_path='src/cfg/checkpoints/np15000_graspness1e-1_bs4_lr1e-3_viewres_dataaug_fps_14D_epoch10.tar'
                      )
    
    t_grasp2robot,rpy_grasp2robot,width = grasper.get_grasp()
    success = arm.grasp_ros(t_grasp2robot, rpy_grasp2robot, open_size=width)

    