// Generated by gencpp from file dual_arm_msgs/MoveJ.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_MOVEJ_H
#define DUAL_ARM_MSGS_MESSAGE_MOVEJ_H


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
struct MoveJ_
{
  typedef MoveJ_<ContainerAllocator> Type;

  MoveJ_()
    : joint()
    , speed(0.0)  {
      joint.assign(0.0);
  }
  MoveJ_(const ContainerAllocator& _alloc)
    : joint()
    , speed(0.0)  {
  (void)_alloc;
      joint.assign(0.0);
  }



   typedef boost::array<float, 6>  _joint_type;
  _joint_type joint;

   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::dual_arm_msgs::MoveJ_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::MoveJ_<ContainerAllocator> const> ConstPtr;

}; // struct MoveJ_

typedef ::dual_arm_msgs::MoveJ_<std::allocator<void> > MoveJ;

typedef boost::shared_ptr< ::dual_arm_msgs::MoveJ > MoveJPtr;
typedef boost::shared_ptr< ::dual_arm_msgs::MoveJ const> MoveJConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::MoveJ_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::MoveJ_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::MoveJ_<ContainerAllocator2> & rhs)
{
  return lhs.joint == rhs.joint &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::MoveJ_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::MoveJ_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::MoveJ_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::MoveJ_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::MoveJ_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09c56834f3b1f08e2e81713c24160d02";
  }

  static const char* value(const ::dual_arm_msgs::MoveJ_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09c56834f3b1f08eULL;
  static const uint64_t static_value2 = 0x2e81713c24160d02ULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/MoveJ";
  }

  static const char* value(const ::dual_arm_msgs::MoveJ_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[6] joint\n"
"float32 speed\n"
;
  }

  static const char* value(const ::dual_arm_msgs::MoveJ_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveJ_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::MoveJ_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::MoveJ_<ContainerAllocator>& v)
  {
    s << indent << "joint[]" << std::endl;
    for (size_t i = 0; i < v.joint.size(); ++i)
    {
      s << indent << "  joint[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joint[i]);
    }
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_MOVEJ_H