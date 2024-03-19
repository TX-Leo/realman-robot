from robotic_arm_package.robotic_arm import *
import sys


# 夹爪使用例程（需机械臂末端安装夹爪）
# 连接机械臂，注册回调函数
 # callback = CANFD_Callback(mcallback)
robot = Arm(RM75, "192.168.10.18", None)

# API版本信息
print(robot.API_Version())
    #   回零位
zero = [-1, -79, 166, 1, 136, -25, 0]
ret = robot.Movej_Cmd(zero, 20)
if ret != 0:
    print("回零位失败：" + str(ret))
    sys.exit()

    #   张开夹爪，抓取位置
robot.Set_Hand_Seq (1, True)
if ret != 0:
        print("张开夹爪失败：" + str(ret))
        sys.exit()

joint1 = [9, 34, 130, -39, 67, -51, 0]
ret = robot.Movej_Cmd(joint1, 20)
if ret != 0:
        print("到达抓取位置失败：" + str(ret))
        sys.exit()

    #   抓取
#ret = robot.Set_Hand_Seq (2, True)
#if ret != 0:
        print("抓取失败：" + str(ret))
        sys.exit()

    #   放置
#joint2 = [0, 0, 60, 0, 0, 0, 0]

#ret = robot.Movej_Cmd(joint2, 20)
#if ret != 0:
        print("到达放置位置失败：" + str(ret))
        sys.exit()

#robot.Set_Hand_Seq (1, True)
#if ret != 0:
        print("放置失败：" + str(ret))
        sys.exit()

    #   回零位
#ret = robot.Movej_Cmd(zero, 20, 0, 1)
#if ret != 0:
        print("回零位失败：" + str(ret))
        sys.exit()
#print("夹爪抓取成功")





# 断开连接
robot.RM_API_UnInit()
robot.Arm_Socket_Close()
