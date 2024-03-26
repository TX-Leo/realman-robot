import numpy as np

from src.grasper import Grasper
from src.arm import Arm
from src.camera import RealSense

def init():
    
    camera = RealSense(width=1280,
                       height=720,
                       intrinsic_path='./cfg/intrinsic.txt',
                       depth_scale_path='./cfg/depth_scale.txt'
                       )
    print(camera)
    # time.sleep(3)
    camera.start_rs(fps=6)
    rgb_img,d_img = camera.capture_rgbd(rgb_save_path='images/rgb_img.jpg',d_save_path='images/d_img.jpg')
    camera = camera.close_rs()

    arm = Arm(host_ip='192.168.10.19', # 19 for left
              host_port=8080,
              cam2base_H_path='src/cfg/cam2base_H.csv'
              )
    arm.arm.API_Version()
    
    grasper = Grasper(camera=camera,
                      arm=arm,
                      rgb_img=rgb_img,
                      d_img=d_img,
                      checkpoint_path='src/cfg/checkpoints/np15000_graspness1e-1_bs4_lr1e-3_viewres_dataaug_fps_14D_epoch10.tar'
                      )
    grasper.process_data()
    # t_grasp2robot,rpy_grasp2robot,width = grasper.get_grasp()
    # success = arm.grasp_ros(t_grasp2robot, rpy_grasp2robot, open_size=width)

    