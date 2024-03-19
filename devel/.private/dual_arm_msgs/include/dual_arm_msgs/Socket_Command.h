// Generated by gencpp from file dual_arm_msgs/Socket_Command.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_SOCKET_COMMAND_H
#define DUAL_ARM_MSGS_MESSAGE_SOCKET_COMMAND_H


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
struct Socket_Command_
{
  typedef Socket_Command_<ContainerAllocator> Type;

  Socket_Command_()
    : command(0)  {
    }
  Socket_Command_(const ContainerAllocator& _alloc)
    : command(0)  {
  (void)_alloc;
    }



   typedef uint16_t _command_type;
  _command_type command;





  typedef boost::shared_ptr< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> const> ConstPtr;

}; // struct Socket_Command_

typedef ::dual_arm_msgs::Socket_Command_<std::allocator<void> > Socket_Command;

typedef boost::shared_ptr< ::dual_arm_msgs::Socket_Command > Socket_CommandPtr;
typedef boost::shared_ptr< ::dual_arm_msgs::Socket_Command const> Socket_CommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::Socket_Command_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::Socket_Command_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Socket_Command_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::Socket_Command_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Socket_Command_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c83874a1c49dbf24b2b8f600399430e1";
  }

  static const char* value(const ::dual_arm_msgs::Socket_Command_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc83874a1c49dbf24ULL;
  static const uint64_t static_value2 = 0xb2b8f600399430e1ULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/Socket_Command";
  }

  static const char* value(const ::dual_arm_msgs::Socket_Command_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#通过Socket控制无序分拣程序，1代表开始，2代表暂停，3代表继续，4代表结束\n"
"uint16 command   \n"
;
  }

  static const char* value(const ::dual_arm_msgs::Socket_Command_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Socket_Command_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::Socket_Command_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::Socket_Command_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_SOCKET_COMMAND_H