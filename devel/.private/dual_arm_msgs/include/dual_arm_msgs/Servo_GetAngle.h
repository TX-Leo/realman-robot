// Generated by gencpp from file dual_arm_msgs/Servo_GetAngle.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_SERVO_GETANGLE_H
#define DUAL_ARM_MSGS_MESSAGE_SERVO_GETANGLE_H


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
struct Servo_GetAngle_
{
  typedef Servo_GetAngle_<ContainerAllocator> Type;

  Servo_GetAngle_()
    : servo_id(0)  {
    }
  Servo_GetAngle_(const ContainerAllocator& _alloc)
    : servo_id(0)  {
  (void)_alloc;
    }



   typedef uint16_t _servo_id_type;
  _servo_id_type servo_id;





  typedef boost::shared_ptr< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> const> ConstPtr;

}; // struct Servo_GetAngle_

typedef ::dual_arm_msgs::Servo_GetAngle_<std::allocator<void> > Servo_GetAngle;

typedef boost::shared_ptr< ::dual_arm_msgs::Servo_GetAngle > Servo_GetAnglePtr;
typedef boost::shared_ptr< ::dual_arm_msgs::Servo_GetAngle const> Servo_GetAngleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator2> & rhs)
{
  return lhs.servo_id == rhs.servo_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "44a63dfe689e2d7241879f9eb59bd488";
  }

  static const char* value(const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x44a63dfe689e2d72ULL;
  static const uint64_t static_value2 = 0x41879f9eb59bd488ULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/Servo_GetAngle";
  }

  static const char* value(const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#读取舵机角度位置值\n"
"uint16 servo_id	#舵机ID\n"
;
  }

  static const char* value(const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.servo_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Servo_GetAngle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::Servo_GetAngle_<ContainerAllocator>& v)
  {
    s << indent << "servo_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.servo_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_SERVO_GETANGLE_H