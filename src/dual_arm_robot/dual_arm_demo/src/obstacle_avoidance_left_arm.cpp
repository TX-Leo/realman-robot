#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/CollisionObject.h>
 
 
int main(int argc, char **argv)
{
    ros::init(argc, argv, "obstacle_avoidance_left_arm");
    ros::NodeHandle nh;
    ros::AsyncSpinner spin(1);
    spin.start();
 
    //    创建运动规划的情景，等待创建完成
    ros::Publisher planning_scene_diff_publisher = nh.advertise<moveit_msgs::PlanningScene>("planning_scene", 1);
    ros::WallDuration sleep_t(1);
    
    while (planning_scene_diff_publisher.getNumSubscribers() < 1)
    {
        sleep_t.sleep();
    }
 
    moveit::planning_interface::MoveGroupInterface arm("left_arm");
    
    //无障碍的动作
	std::vector<double> joints={0, 0, 0, 0, 0, 0};
    arm.setJointValueTarget(joints);
    moveit::planning_interface::MoveGroupInterface::Plan my_plan;
    moveit::planning_interface::MoveItErrorCode success = arm.plan(my_plan);
    if(success) 
    {
        arm.execute(my_plan);
    }
    
 
    moveit_msgs::PlanningScene planning_scene;
 
    // 第一个障碍物
    moveit_msgs::CollisionObject cylinder;
    cylinder.header.frame_id = "base_link_body";
    cylinder.id="cylinder";
    //定义物体形状尺寸
    shape_msgs::SolidPrimitive primitive;
    primitive.type=primitive.CYLINDER;
    primitive.dimensions.resize(3); //dimensions是一个vector,为其分配3个元素空间
    primitive.dimensions[0] =0.6;   //圆柱体高度
    primitive.dimensions[1] =0.05;   //半径
 
    geometry_msgs::Pose pose;
    pose.orientation.w =1.0;
    pose.position.x=0.5;
    pose.position.y=0.4;
    pose.position.z=0.9;
    cylinder.primitives.push_back(primitive);
    cylinder.primitive_poses.push_back(pose);
    //定义操作为添加
    cylinder.operation = cylinder.ADD;
    planning_scene.world.collision_objects.emplace_back(cylinder);
 
 
    //发布
    planning_scene.is_diff = true;
    planning_scene_diff_publisher.publish(planning_scene);
 

    //避障运动
    joints={1.599,1.456,-0.436,0.38,0,0};
    arm.setJointValueTarget(joints);
    success = arm.plan(my_plan);
    if(success)
    {
        arm.execute(my_plan);
    }
 
    return 0;
}
