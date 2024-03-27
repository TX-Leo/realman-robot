#coding=utf8
import numpy as np
import math
import csv
import sys

sys.path.append("./src/")
from arm_package.robotic_arm import Arm as ArmBase

class Arm():
    def __init__(self, host_ip, host_port, cam2base_H_path=None, home_state=[0,-90,0,0,0,0,0], workspace_limits=[[-0.7, 0.7], [-0.7, 0.7], [0.00, 0.6]]):
        self.host_ip = host_ip
        self.host_port = host_port
        self.home_state = home_state
        self.workspace_limits = workspace_limits
        with open(cam2base_H_path, newline='') as csvfile:
            reader = csv.reader(csvfile, delimiter=',')
            data = []
            for row in reader:
                data.append(row)
        self.cam2base_H = np.array(data, dtype=np.float32)
        self.arm = ArmBase(host_ip,host_port)

    def move_j(self,joint,vel):
        self.arm.Movej_Cmd(joint, vel, trajectory_connect=0, r=0, block=True) 

    def go_home(self):
        self.move_j(joint=self.home_state,vel=5)

    def close_arm(self):
        self.arm.Arm_Socket_Close()

def test():
    arm = Arm('192.168.10.19',8080,cam2base_H_path='cfg/cam2base_H.csv')
    arm.arm.API_Version()
    arm.go_home()

    arm.close_arm()

if __name__ =="__main__":
    test()

