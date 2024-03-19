extern "C"{
#include "rm_base.h"
}
#include <math.h>
#include <ros/ros.h>
#include <dual_arm_msgs/MoveJ.h>
#include <dual_arm_msgs/Plan_State.h>


using namespace std;


int main(int argc, char **argv)
{

	// 初始化ROS节点
    ros::init(argc, argv, "inverse_kinematics_demo");
    // 创建节点句柄
    ros::NodeHandle nh;
    
    // 空间规划指令Publisher
    ros::Publisher moveJ_P_right_pub = nh.advertise<dual_arm_msgs::MoveJ>("/r_arm/MoveJ_Cmd", 10);
    
    //API初始化
    RM_API_Init(65, 0);

    //设置末端为标准版
    setLwt(2);
    setAngle(-90,90,0);
    
    ros::Duration(2.0).sleep();

	float joint[6] = {81.001717,104.540276,-104.602264,-158.27413,78.476189,77.162445};
    float q_out[6];


	Pose target_pose;
    target_pose.position.x = 0.079621+0.02;
	target_pose.position.y = 0.420519;
	target_pose.position.z = 0.075954;
	target_pose.orientation.x = -0.008211;
	target_pose.orientation.y = -0.626109;
	target_pose.orientation.z = -0.148714;
    target_pose.orientation.w = 0.765379;

    inverse_kinematics(joint, &target_pose, q_out, 0);
    ROS_INFO("inverse kinematics joint is:[%f, %f, %f, %f, %f, %f]",q_out[0], q_out[1], q_out[2], q_out[3], q_out[4], q_out[5]);

    dual_arm_msgs::MoveJ moveJ_BeginPose;
    moveJ_BeginPose.joint[0] = q_out[0]/180.0*3.14;
    moveJ_BeginPose.joint[1] = q_out[1]/180.0*3.14;
    moveJ_BeginPose.joint[2] = q_out[2]/180.0*3.14;
    moveJ_BeginPose.joint[3] = q_out[3]/180.0*3.14;
    moveJ_BeginPose.joint[4] = q_out[4]/180.0*3.14;
    moveJ_BeginPose.joint[5] = q_out[5]/180.0*3.14;
    moveJ_BeginPose.speed = 0.3;

    //发布空间规划指令使机械臂运动到目标位姿
    moveJ_P_right_pub.publish(moveJ_BeginPose);

	

    
	ros::waitForShutdown();
    return 0;
}
