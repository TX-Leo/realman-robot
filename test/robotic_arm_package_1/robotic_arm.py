import ctypes
import logging
import math
import os
import sys
import time

from log_setting import CommonLog

logger_ = logging.getLogger(__name__)
logger_ = CommonLog(logger_)


class POSE(ctypes.Structure):
    _fields_ = [("px", ctypes.c_float),
                ("py", ctypes.c_float),
                ("pz", ctypes.c_float),
                ("rx", ctypes.c_float),
                ("ry", ctypes.c_float),
                ("rz", ctypes.c_float)]




def exit_action(func):
    def wrapper(self, *args, **kwargs):

        result = func(self, *args, **kwargs)

        if str(result) == '0':
            time.sleep(1)
        else:
            sys.exit(1)

    return wrapper


class Arm():

    def __init__(self,code,host):


        CUR_PATH = os.path.dirname(os.path.realpath(__file__))
        dllPath = os.path.join(CUR_PATH, "libRM_Base.so.1.0.0")
        self.pDll = ctypes.cdll.LoadLibrary(dllPath)

        self.pDll.RM_API_Init(code, 0)

        logger_.info('arm init done!')

        #连接机械臂
        byteIP = bytes(host, "gbk")
        self.nSocket = self.pDll.Arm_Socket_Start(byteIP, 8080, 200)


        state = self.pDll.Arm_Socket_State(self.nSocket)

        if state:
            logger_.info(f'连接机械臂连接失败:{state}')
            sys.exit(1)

        else:

            logger_.info(f'连接机械臂成功:{self.nSocket}')


        self.init_first()

    def init_first(self):
        #设置机械臂末端参数为初始值
        nRet = self.pDll.Set_Arm_Tip_Init(self.nSocket, 1)

        logger_.info(f'设置机械臂末端参数为初始值')


    @exit_action
    def horizontal(self,pose,v,r,block):
        """
        直线运动
        
       Movel_Cmd 笛卡尔空间直线运动
       pose 目标位姿,位置单位：米，姿态单位：弧度
       v 速度比例1~100，即规划速度和加速度占机械臂末端最大线速度和线加速度的百分比
       r 轨迹交融半径，目前默认0。
        block 1 阻塞 0 非阻塞
       return:0-成功，失败返回:错误码, rm_define.h查询
        """
        po1 = POSE()
        po1.px,po1.py,po1.pz,po1.rx,po1.ry,po1.rz = pose[0],pose[1],pose[2],pose[3],pose[4],pose[5]
        self.pDll.Movel_Cmd.argtypes = (ctypes.c_int, POSE, ctypes.c_byte, ctypes.c_float, ctypes.c_int)
        self.pDll.Movel_Cmd.restype = ctypes.c_int
        tag = self.pDll.Movel_Cmd(self.nSocket,po1,v,r,block)
        logger_.info(f'Movel_Cmd:{tag}')

        return tag



    @exit_action
    def updown(self,joint,v,r,block):
        """
       Movej_Cmd 关节空间运动
       ArmSocket socket句柄
       joint 目标关节1~7角度数组
       v 速度比例1~100，即规划速度和加速度占关节最大线转速和加速度的百分比
       r 轨迹交融半径，目前默认0。
        block 1 阻塞 0 非阻塞
       return 0-成功，失败返回:错误码, rm_define.h查询.
       :return:
        """

        float_joint = ctypes.c_float * 6
        joint = float_joint(*joint)

        self.pDll.Movej_Cmd.argtypes = (ctypes.c_int, ctypes.c_float * 6, ctypes.c_byte,
                                   ctypes.c_float, ctypes.c_bool)

        self.pDll.Movej_Cmd.restype = ctypes.c_int

        tag = self.pDll.Movej_Cmd(self.nSocket,joint,v,r,block)
        logger_.info(f'Movej_Cmd:{tag}')


        return tag

    @exit_action
    def movej_p(self,pose,v,r,block):
        """
        关节空间运动到目标位姿

       Movej_P_Cmd 该函数用于关节空间运动到目标位姿
       pose: 目标位姿，位置单位：米，姿态单位：弧度。注意：该目标位姿必须是机械臂末端末端法兰中心基于基坐标系的位姿！！
       v 速度比例1~100，即规划速度和加速度占机械臂末端最大线速度和线加速度的百分比
       r 轨迹交融半径，目前默认0。
        block 1 阻塞 0 非阻塞
       return:0-成功，失败返回:错误码, rm_define.h查询
        """
        po1 = POSE()
        po1.px, po1.py, po1.pz, po1.rx, po1.ry, po1.rz = pose[0], pose[1], pose[2], pose[3], pose[4], pose[5]
        self.pDll.Movej_P_Cmd.argtypes = (ctypes.c_int, POSE, ctypes.c_byte, ctypes.c_float, ctypes.c_int)
        self.pDll.Movej_P_Cmd.restype = ctypes.c_int
        tag = self.pDll.Movej_P_Cmd(self.nSocket, po1, v, r, block)
        logger_.info(f'Movej_P_Cmd:{tag}')

        return tag

    @exit_action
    def change_frame(self,name="Base"):
        """
        切换当前工作坐标系
        """
        tag = self.pDll.Change_Work_Frame(self.nSocket, name, 1)
        logger_.info(f'change_frame:{tag}')

        return tag
    @exit_action
    def change_frame(self,name="Base"):
        """
        切换当前工作坐标系
        """
 
        self.pDll.Change_Work_Frame.argtypes = [ctypes.c_void_p, ctypes.c_char_p, ctypes.c_bool]
        name = ctypes.c_char_p(name.encode('utf-8')) 
        tag = self.pDll.Change_Work_Frame(self.nSocket, name, 1)
        logger_.info(f'change_frame:{tag}')
        time.sleep(1.5) 

        return tag


    def get_curr_arm_state(self, retry_count=5):
        """Gets the arm's current states. Returns 0 iff success.
        Only works with POSE but not POSE_c, i.e., doesn't return quaternion.
        Use forward_kinematics() instead if quaternion is a must."""

        self.pDll.Get_Current_Arm_State.argtypes = (ctypes.c_int, ctypes.c_float * 6, ctypes.POINTER(POSE),
                                                    ctypes.POINTER(ctypes.c_uint16), ctypes.POINTER(ctypes.c_uint16))
        joints = (ctypes.c_float * 6)()
        curr_pose = POSE()
        cp_ptr = ctypes.pointer(curr_pose)
        arm_err_ptr = ctypes.pointer(ctypes.c_uint16())
        sys_err_ptr = ctypes.pointer(ctypes.c_uint16())
        error_code = self.pDll.Get_Current_Arm_State(self.nSocket, joints, cp_ptr, arm_err_ptr, sys_err_ptr)
        while error_code and retry_count:
            # sleep(0.3)
            logger_.warning(f"Failed to get curr arm states. Error Code: {error_code}\tRetry Count: {retry_count}")
            error_code = self.pDll.Get_Current_Arm_State(self.nSocket, joints, cp_ptr, arm_err_ptr, sys_err_ptr)
            retry_count -= 1

        if error_code == 0:
            curr_pose = [curr_pose.px,curr_pose.py,curr_pose.pz,curr_pose.rx,curr_pose.ry,curr_pose.rz]

        return joints, curr_pose, error_code


