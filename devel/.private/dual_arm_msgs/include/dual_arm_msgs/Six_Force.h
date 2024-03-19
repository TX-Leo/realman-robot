// Generated by gencpp from file dual_arm_msgs/Six_Force.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_SIX_FORCE_H
#define DUAL_ARM_MSGS_MESSAGE_SIX_FORCE_H


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
struct Six_Force_
{
  typedef Six_Force_<ContainerAllocator> Type;

  Six_Force_()
    : force()  {
      force.assign(0.0);
  }
  Six_Force_(const ContainerAllocator& _alloc)
    : force()  {
  (void)_alloc;
      force.assign(0.0);
  }



   typedef boost::array<float, 6>  _force_type;
  _force_type force;





  typedef boost::shared_ptr< ::dual_arm_msgs::Six_Force_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::Six_Force_<ContainerAllocator> const> ConstPtr;

}; // struct Six_Force_

typedef ::dual_arm_msgs::Six_Force_<std::allocator<void> > Six_Force;

typedef boost::shared_ptr< ::dual_arm_msgs::Six_Force > Six_ForcePtr;
typedef boost::shared_ptr< ::dual_arm_msgs::Six_Force const> Six_ForceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::Six_Force_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::Six_Force_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Six_Force_<ContainerAllocator2> & rhs)
{
  return lhs.force == rhs.force;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::Six_Force_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Six_Force_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Six_Force_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Six_Force_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Six_Force_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dfd1d6e819d24bd888c7dcd848ca7122";
  }

  static const char* value(const ::dual_arm_msgs::Six_Force_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdfd1d6e819d24bd8ULL;
  static const uint64_t static_value2 = 0x88c7dcd848ca7122ULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/Six_Force";
  }

  static const char* value(const ::dual_arm_msgs::Six_Force_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[6] force\n"
"\n"
;
  }

  static const char* value(const ::dual_arm_msgs::Six_Force_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.force);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Six_Force_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::Six_Force_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::Six_Force_<ContainerAllocator>& v)
  {
    s << indent << "force[]" << std::endl;
    for (size_t i = 0; i < v.force.size(); ++i)
    {
      s << indent << "  force[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.force[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_SIX_FORCE_H