// Generated by gencpp from file dual_arm_msgs/Joint_Step.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_JOINT_STEP_H
#define DUAL_ARM_MSGS_MESSAGE_JOINT_STEP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dual_arm_msgs
{
template <class ContainerAllocator>
struct Joint_Step_
{
  typedef Joint_Step_<ContainerAllocator> Type;

  Joint_Step_()
    : joint_num(0)
    , step_angle(0.0)
    , speed(0.0)  {
    }
  Joint_Step_(const ContainerAllocator& _alloc)
    : joint_num(0)
    , step_angle(0.0)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _joint_num_type;
  _joint_num_type joint_num;

   typedef float _step_angle_type;
  _step_angle_type step_angle;

   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> const> ConstPtr;

}; // struct Joint_Step_

typedef ::dual_arm_msgs::Joint_Step_<std::allocator<void> > Joint_Step;

typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Step > Joint_StepPtr;
typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Step const> Joint_StepConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::Joint_Step_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::Joint_Step_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Joint_Step_<ContainerAllocator2> & rhs)
{
  return lhs.joint_num == rhs.joint_num &&
    lhs.step_angle == rhs.step_angle &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::Joint_Step_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Joint_Step_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2dcc5aafa7a7fc210418ee32285e489e";
  }

  static const char* value(const ::dual_arm_msgs::Joint_Step_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2dcc5aafa7a7fc21ULL;
  static const uint64_t static_value2 = 0x0418ee32285e489eULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/Joint_Step";
  }

  static const char* value(const ::dual_arm_msgs::Joint_Step_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 joint_num\n"
"float32 step_angle\n"
"float32 speed\n"
;
  }

  static const char* value(const ::dual_arm_msgs::Joint_Step_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_num);
      stream.next(m.step_angle);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Joint_Step_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::Joint_Step_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::Joint_Step_<ContainerAllocator>& v)
  {
    s << indent << "joint_num: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.joint_num);
    s << indent << "step_angle: ";
    Printer<float>::stream(s, indent + "  ", v.step_angle);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_JOINT_STEP_H
