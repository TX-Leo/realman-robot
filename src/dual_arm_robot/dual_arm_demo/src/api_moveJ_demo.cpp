//
// Created by ubuntu on 22-9-1.
//
#include <ros/ros.h>
#include <dual_arm_msgs/MoveJ.h>
#include <dual_arm_msgs/Plan_State.h>

ros::Publisher moveJ_left_pub, moveJ_right_pub;

 
// 接收到订阅的左机械臂执行状态消息后，会进入消息回调函数
void l_planStateCallback(const dual_arm_msgs::Plan_State::ConstPtr &msg)
{
    // 将接收到的消息打印出来，显示是否执行成功
    if(msg->state)
    {
        ROS_INFO("Left arm plan state OK");

        dual_arm_msgs::MoveJ moveJ_target;
        moveJ_target.joint[0] = 0;
        moveJ_target.joint[1] = 0;
        moveJ_target.joint[2] = 0;
        moveJ_target.joint[3] = 0;
        moveJ_target.joint[4] = 0;
        moveJ_target.joint[5] = 0;
        moveJ_target.speed = 0.3;

    //发布空间规划指令使机器人左臂运动到目标位姿
    moveJ_right_pub.publish(moveJ_target);
    } 
    else 
    {
        ROS_INFO("Left arm plan failed!");
    }

}

// 接收到订阅的右机械臂执行状态消息后，会进入消息回调函数
void r_planStateCallback(const dual_arm_msgs::Plan_State::ConstPtr &msg)
{
    // 将接收到的消息打印出来，显示是否执行成功
    if(msg->state)
    {
        ROS_INFO("Right arm plan state OK");
    } 
    else 
    {
        ROS_INFO("Right arm plan failed!");
    }

}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "api_moveJ_demo");
    ros::NodeHandle nh;

    // 声明spinner对象，参数2表示并发线程数，默认处理全局Callback队列
    ros::AsyncSpinner spin(2);
    // 启动两个spinner线程并发执行可用回调 
    spin.start();


    /*
     * 1.相关初始化
     */
    moveJ_left_pub = nh.advertise<dual_arm_msgs::MoveJ>("/l_arm/MoveJ_Cmd", 10);
    moveJ_right_pub = nh.advertise<dual_arm_msgs::MoveJ>("/r_arm/MoveJ_Cmd", 10);

    // 订阅机械臂执行状态话题
    ros::Subscriber l_planState_sub = nh.subscribe("/l_arm/Plan_State", 10, l_planStateCallback);
    ros::Subscriber r_planState_sub = nh.subscribe("/r_arm/Plan_State", 10, r_planStateCallback);

    ros::Duration(2.0).sleep();

    /**
     * 2.控制机器人左臂运动到目标位姿
     */
    //定义一个MoveJ指令的目标位姿
    dual_arm_msgs::MoveJ moveJ_target;
    moveJ_target.joint[0] = 0;
    moveJ_target.joint[1] = 0;
    moveJ_target.joint[2] = 0;
    moveJ_target.joint[3] = 0;
    moveJ_target.joint[4] = 1.57;
    moveJ_target.joint[5] = 0;
    moveJ_target.speed = 0.3;

    //发布空间规划指令使机器人左臂运动到目标位姿
    moveJ_left_pub.publish(moveJ_target);

    ros::waitForShutdown();

    return 0;
}
