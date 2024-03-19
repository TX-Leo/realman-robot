// Generated by gencpp from file dual_arm_msgs/IO_Update.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_IO_UPDATE_H
#define DUAL_ARM_MSGS_MESSAGE_IO_UPDATE_H


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
struct IO_Update_
{
  typedef IO_Update_<ContainerAllocator> Type;

  IO_Update_()
    : type(0)  {
    }
  IO_Update_(const ContainerAllocator& _alloc)
    : type(0)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;





  typedef boost::shared_ptr< ::dual_arm_msgs::IO_Update_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::IO_Update_<ContainerAllocator> const> ConstPtr;

}; // struct IO_Update_

typedef ::dual_arm_msgs::IO_Update_<std::allocator<void> > IO_Update;

typedef boost::shared_ptr< ::dual_arm_msgs::IO_Update > IO_UpdatePtr;
typedef boost::shared_ptr< ::dual_arm_msgs::IO_Update const> IO_UpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::IO_Update_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::IO_Update_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::IO_Update_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::IO_Update_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::IO_Update_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::IO_Update_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::IO_Update_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::IO_Update_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3958533281df6e9cc0a725a386f3b5df";
  }

  static const char* value(const ::dual_arm_msgs::IO_Update_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3958533281df6e9cULL;
  static const uint64_t static_value2 = 0xc0a725a386f3b5dfULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/IO_Update";
  }

  static const char* value(const ::dual_arm_msgs::IO_Update_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 type\n"
;
  }

  static const char* value(const ::dual_arm_msgs::IO_Update_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IO_Update_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::IO_Update_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::IO_Update_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_IO_UPDATE_H