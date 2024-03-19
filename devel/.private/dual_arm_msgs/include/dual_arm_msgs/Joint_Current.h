// Generated by gencpp from file dual_arm_msgs/Joint_Current.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_JOINT_CURRENT_H
#define DUAL_ARM_MSGS_MESSAGE_JOINT_CURRENT_H


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
struct Joint_Current_
{
  typedef Joint_Current_<ContainerAllocator> Type;

  Joint_Current_()
    : joint_current()  {
      joint_current.assign(0.0);
  }
  Joint_Current_(const ContainerAllocator& _alloc)
    : joint_current()  {
  (void)_alloc;
      joint_current.assign(0.0);
  }



   typedef boost::array<float, 6>  _joint_current_type;
  _joint_current_type joint_current;





  typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> const> ConstPtr;

}; // struct Joint_Current_

typedef ::dual_arm_msgs::Joint_Current_<std::allocator<void> > Joint_Current;

typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Current > Joint_CurrentPtr;
typedef boost::shared_ptr< ::dual_arm_msgs::Joint_Current const> Joint_CurrentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::Joint_Current_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::Joint_Current_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Joint_Current_<ContainerAllocator2> & rhs)
{
  return lhs.joint_current == rhs.joint_current;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::Joint_Current_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Joint_Current_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
{
  static const char* value()
  {
    return "369b310bf518537d26269558081c8067";
  }

  static const char* value(const ::dual_arm_msgs::Joint_Current_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x369b310bf518537dULL;
  static const uint64_t static_value2 = 0x26269558081c8067ULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/Joint_Current";
  }

  static const char* value(const ::dual_arm_msgs::Joint_Current_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[6] joint_current\n"
;
  }

  static const char* value(const ::dual_arm_msgs::Joint_Current_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Joint_Current_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::Joint_Current_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::Joint_Current_<ContainerAllocator>& v)
  {
    s << indent << "joint_current[]" << std::endl;
    for (size_t i = 0; i < v.joint_current.size(); ++i)
    {
      s << indent << "  joint_current[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joint_current[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_JOINT_CURRENT_H
