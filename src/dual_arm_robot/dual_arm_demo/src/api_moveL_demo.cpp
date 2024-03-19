//
// Created by ubuntu on 22-9-1.
//
#include <ros/ros.h>
#include <dual_arm_msgs/MoveJ_P.h>
#include <dual_arm_msgs/Plan_State.h>
#include <dual_arm_msgs/MoveL.h>


//全局变量，用于阻止MoveL重复执行
int flag = 0;

ros::Publisher moveL_right_pub;

// 接收到订阅的机械臂执行状态消息后，会进入消息回调函数
void planStateCallback(const dual_arm_msgs::Plan_State::ConstPtr& msg)
{
    // 将接收到的消息打印出来，显示机械臂是否完成运动
    if(msg->state)
    {
        if(flag == 0)
        {
            ROS_INFO("The first trajectory has been executed");
            ROS_INFO("Prepare to execute Instruction MoveL");

            //延时2秒，确保机械臂执行完上一条轨迹后稳定
            ros::Duration(2.0).sleep();

            // 通过MoveL指令控制机械臂直线运动
            // 定义一个MoveL指令的目标位姿（该位姿通过调整初始位姿x坐标获得），使机器人右臂沿x轴直线运动
            dual_arm_msgs::MoveL moveL_TargetPose;
            moveL_TargetPose.Pose.position.x = -0.3-0.1;
            moveL_TargetPose.Pose.position.y = 0;
            moveL_TargetPose.Pose.position.z = 0.3;
            moveL_TargetPose.Pose.orientation.x = 1;
            moveL_TargetPose.Pose.orientation.y = 0;
            moveL_TargetPose.Pose.orientation.z = 0;
            moveL_TargetPose.Pose.orientation.w = -0.0002037;
            moveL_TargetPose.speed = 0.3;
			
			flag = 1;
            // 发布位姿
            moveL_right_pub.publish(moveL_TargetPose);
        }
        else if(flag == 1)
        {
            ROS_INFO("MoveL has been executed");
            flag = 2;
        }
    } 
	else 
	{
        ROS_INFO("Plan State Failed");
    }

}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "api_moveL_demo");
    ros::NodeHandle nh;

    // 声明spinner对象，参数2表示并发线程数，默认处理全局Callback队列
    ros::AsyncSpinner spin(2);
    // 启动两个spinner线程并发执行可用回调 
    spin.start();


    /*
     * 1.相关初始化
     */
    // 空间规划指令Publisher
    ros::Publisher moveJ_P_right_pub = nh.advertise<dual_arm_msgs::MoveJ_P>("/r_arm/MoveJ_P_Cmd", 10);
	moveL_right_pub = nh.advertise<dual_arm_msgs::MoveL>("/r_arm/MoveL_Cmd", 10);

    // 订阅机械臂执行状态话题
    ros::Subscriber planState_sub = nh.subscribe("/r_arm/Plan_State", 10, planStateCallback);

    ros::Duration(2.0).sleep();

    /**
     * 2.控制机器人右臂运动到目标位姿
     */
    dual_arm_msgs::MoveJ_P moveJ_P_target;
    moveJ_P_target.Pose.position.x = -0.3;
    moveJ_P_target.Pose.position.y = 0;
    moveJ_P_target.Pose.position.z = 0.3;
    moveJ_P_target.Pose.orientation.x = 1;
    moveJ_P_target.Pose.orientation.y = 0;
    moveJ_P_target.Pose.orientation.z = 0;
    moveJ_P_target.Pose.orientation.w = -0.0002037;
	moveJ_P_target.speed = 0.3;
   
    //发布空间规划指令使机器人左臂运动到目标位姿
    moveJ_P_right_pub.publish(moveJ_P_target);

    ros::waitForShutdown();

    return 0;
}


