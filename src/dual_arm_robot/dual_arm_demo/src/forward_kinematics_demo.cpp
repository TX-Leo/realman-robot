extern "C"{
#include "rm_base.h"
}
#include <math.h>
#include <ros/ros.h>
#include <dual_arm_msgs/MoveJ_P.h>
#include <dual_arm_msgs/Plan_State.h>


using namespace std;


// 接收到订阅的机械臂执行状态消息后，会进入消息回调函数
void planStateCallback(const dual_arm_msgs::Plan_State::ConstPtr &msg)
{
    // 将接收到的消息打印出来，显示是否执行成功
    if(msg->state)
    {
        ROS_INFO("*******Plan State OK");
    } else {
        ROS_INFO("*******Plan State Fail");
    }

}


int main(int argc, char **argv)
{

	// 初始化ROS节点
    ros::init(argc, argv, "forward_kinematics_demo");
    // 创建节点句柄
    ros::NodeHandle nh;
    
	// 声明spinner对象，参数2表示并发线程数，默认处理全局Callback队列
    ros::AsyncSpinner spin(2);
    // 启动两个spinner线程并发执行可用回调 
    spin.start();
    
    // 空间规划指令Publisher
    ros::Publisher moveJ_P_right_pub = nh.advertise<dual_arm_msgs::MoveJ_P>("/r_arm/MoveJ_P_Cmd", 10);

    
    // 订阅机械臂执行状态话题
    ros::Subscriber planState_sub = nh.subscribe<dual_arm_msgs::Plan_State>("/r_arm/Plan_State", 10, planStateCallback);
    
    //API初始化
    RM_API_Init(65, 0);

    //设置末端为标准版
    setLwt(2);
    setAngle(-90,90,0);
    
    ros::Duration(2.0).sleep();

	//joint记录机械比的目标角度
	float joint[6] = {81.001717,104.540276,-104.602264,-158.27413,78.476189,77.162445};
    float q_out[6];

	
	//调用运动学正解api，输入为目标位置关节角度，输出为目标位置机械比位姿（位置+欧拉角形式）
    Pose now = Forward_Kinematics(joint);
    ROS_INFO("Now Flange: %f, %f, %f, %f, %f, %f, %f\n",now.position.x,now.position.y,now.position.z,now.orientation.x,now.orientation.y,now.orientation.z,now.orientation.w);


	//将目标位姿通过moveJ_P发送给机械臂，控制机械臂运动到目标位姿
	dual_arm_msgs::MoveJ_P moveJ_P_target;
	moveJ_P_target.Pose.position.x = now.position.x;
	moveJ_P_target.Pose.position.y = now.position.y;
	moveJ_P_target.Pose.position.z = now.position.z;
	moveJ_P_target.Pose.orientation.x = now.orientation.x;
	moveJ_P_target.Pose.orientation.y = now.orientation.y;
	moveJ_P_target.Pose.orientation.z = now.orientation.z;
    moveJ_P_target.Pose.orientation.w= now.orientation.w;
	moveJ_P_target.speed = 0.3;
	
   moveJ_P_right_pub.publish(moveJ_P_target);

    
    ros::waitForShutdown();

    return 0;
}
