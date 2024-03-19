#include <ros/ros.h>
#include <std_msgs/String.h>

#include <dual_arm_msgs/Servo_Move.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PoseStamped.h>

using namespace std;

class recTragetPose
{
private:
    ros::NodeHandle nh;
    ros::Publisher pub_servo_ctr_angle;
    ros::Subscriber sub_marker_pose;

    //坐标变换Listener
    tf::TransformListener tfListener;

    bool getMarkerPose = false;

public:
    recTragetPose()
    {
        //舵机位置角度移动Publisher
        pub_servo_ctr_angle = nh.advertise<dual_arm_msgs::Servo_Move>("/servo_control/move", 10);

        //视觉识别到marker的Subscriber
        sub_marker_pose = nh.subscribe("/aruco_single/pose", 10, &recTragetPose::MarkerPoseCallback, this);
    }

    void prepare();
    void MarkerPoseCallback(const geometry_msgs::PoseStamped::ConstPtr &pose_stamped);
};

void recTragetPose::prepare()
{
    dual_arm_msgs::Servo_Move servo_move;
    servo_move.servo_id = 1;
    servo_move.angle = 480;
    pub_servo_ctr_angle.publish(servo_move);
    ros::Duration(1.0).sleep();
    servo_move.servo_id = 2;
    servo_move.angle = 532;
    pub_servo_ctr_angle.publish(servo_move);

    getMarkerPose = true;
}

//订阅视觉识别到marker的回调函数
void recTragetPose::MarkerPoseCallback(const geometry_msgs::PoseStamped::ConstPtr &pose_stamped)
{
    if (getMarkerPose)
    {
        try
        {
            //获取base_link和camera_color_frame之间的关系，也就是手眼标定的结果
            tfListener.waitForTransform("/base_link", "/camera_color_frame",
                                        ros::Time(0), ros::Duration(2.0));

            // marker在相机坐标系下的位姿
            geometry_msgs::PoseStamped marker_pose_in_camera;
            // marker在机械臂base_link坐标系下的位姿
            geometry_msgs::PoseStamped marker_pose_in_base_link;

            marker_pose_in_camera.pose = pose_stamped->pose;
            marker_pose_in_camera.header = pose_stamped->header;
            marker_pose_in_camera.header.stamp = ros::Time();
            marker_pose_in_base_link.header.stamp = ros::Time();

            //将marker在相机坐标系下的位姿转换为在机械臂base_link坐标系下的位姿
            tfListener.transformPose("base_link", marker_pose_in_camera, marker_pose_in_base_link);

            ROS_INFO("TargetPose in Camera camera_link: target->position[%f, %f, %f]\n",
                     marker_pose_in_camera.pose.position.x, marker_pose_in_camera.pose.position.y,
                     marker_pose_in_camera.pose.position.z);
            ROS_INFO("TargetPose in Camera camera_link: target->orientation[%f, %f, %f, %f]\n",
                     marker_pose_in_camera.pose.orientation.x,
                     marker_pose_in_camera.pose.orientation.y,
                     marker_pose_in_camera.pose.orientation.z,
                     marker_pose_in_camera.pose.orientation.w);

            ROS_INFO("TargetPose in Arm base_link: target->position[%f, %f, %f]\n",
                     marker_pose_in_base_link.pose.position.x, marker_pose_in_base_link.pose.position.y,
                     marker_pose_in_base_link.pose.position.z);
            ROS_INFO("TargetPose in Arm base_link: target->orientation[%f, %f, %f, %f]\n",
                     marker_pose_in_base_link.pose.orientation.x,
                     marker_pose_in_base_link.pose.orientation.y,
                     marker_pose_in_base_link.pose.orientation.z,
                     marker_pose_in_base_link.pose.orientation.w);
        }
        catch (tf::TransformException &ex)
        {
            ROS_ERROR("[adventure_tf]: (wait) %s", ex.what());
        }
    }
}

int main(int argc, char **argv)
{
    // 初始化ROS节点
    ros::init(argc, argv, "demo_recognize_target_pose");

    recTragetPose recTragetPose;
    ros::Duration(2.0).sleep();
    recTragetPose.prepare();

    ros::AsyncSpinner spin(1);
    spin.start();

    ros::waitForShutdown();

    return 0;
}