# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dual_arm_msgs: 50 messages, 0 services")

set(MSG_I_FLAGS "-Idual_arm_msgs:/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dual_arm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg" ""
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg" NAME_WE)
add_custom_target(_dual_arm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dual_arm_msgs" "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_cpp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(dual_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dual_arm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dual_arm_msgs_generate_messages dual_arm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_cpp _dual_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dual_arm_msgs_gencpp)
add_dependencies(dual_arm_msgs_gencpp dual_arm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dual_arm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_eus(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(dual_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dual_arm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dual_arm_msgs_generate_messages dual_arm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_eus _dual_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dual_arm_msgs_geneus)
add_dependencies(dual_arm_msgs_geneus dual_arm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dual_arm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_lisp(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(dual_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dual_arm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dual_arm_msgs_generate_messages dual_arm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_lisp _dual_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dual_arm_msgs_genlisp)
add_dependencies(dual_arm_msgs_genlisp dual_arm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dual_arm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_nodejs(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dual_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dual_arm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dual_arm_msgs_generate_messages dual_arm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_nodejs _dual_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dual_arm_msgs_gennodejs)
add_dependencies(dual_arm_msgs_gennodejs dual_arm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dual_arm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)
_generate_msg_py(dual_arm_msgs
  "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(dual_arm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dual_arm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dual_arm_msgs_generate_messages dual_arm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Set.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Gripper_Pick.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ_P.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveL.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Start_Multi_Drag_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveC.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_Move.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Joint.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_Move_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Arm_Current_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Servo_GetAngle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/CartePos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Posture.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Analog_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Socket_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Speed.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/LiftState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Force_Position_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Six_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Step.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Manual_Set_Force_Pose.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Lift_Height.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Turtle_Driver.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeTool_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Pos_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/GetArmState_Command.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Set_Force_Position.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Plan_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Angle.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_IO_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Force.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Enable.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/JointPos.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Tool_Digital_Output.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/IO_Update.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_Name.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Joint_Current.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ChangeWorkFrame_State.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/MoveJ.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Stop_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Ort_Teach.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/ArmState.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rm/catkin_ws/src/dual_arm_robot/dual_arm_msgs/msg/Hand_Seq.msg" NAME_WE)
add_dependencies(dual_arm_msgs_generate_messages_py _dual_arm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dual_arm_msgs_genpy)
add_dependencies(dual_arm_msgs_genpy dual_arm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dual_arm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dual_arm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dual_arm_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dual_arm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dual_arm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dual_arm_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dual_arm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dual_arm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dual_arm_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dual_arm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dual_arm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dual_arm_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dual_arm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dual_arm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dual_arm_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dual_arm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
