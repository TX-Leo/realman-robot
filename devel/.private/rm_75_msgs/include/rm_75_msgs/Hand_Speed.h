// Generated by gencpp from file rm_75_msgs/Hand_Speed.msg
// DO NOT EDIT!


#ifndef RM_75_MSGS_MESSAGE_HAND_SPEED_H
#define RM_75_MSGS_MESSAGE_HAND_SPEED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rm_75_msgs
{
template <class ContainerAllocator>
struct Hand_Speed_
{
  typedef Hand_Speed_<ContainerAllocator> Type;

  Hand_Speed_()
    : hand_speed(0)  {
    }
  Hand_Speed_(const ContainerAllocator& _alloc)
    : hand_speed(0)  {
  (void)_alloc;
    }



   typedef uint16_t _hand_speed_type;
  _hand_speed_type hand_speed;





  typedef boost::shared_ptr< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> const> ConstPtr;

}; // struct Hand_Speed_

typedef ::rm_75_msgs::Hand_Speed_<std::allocator<void> > Hand_Speed;

typedef boost::shared_ptr< ::rm_75_msgs::Hand_Speed > Hand_SpeedPtr;
typedef boost::shared_ptr< ::rm_75_msgs::Hand_Speed const> Hand_SpeedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_75_msgs::Hand_Speed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_75_msgs::Hand_Speed_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Hand_Speed_<ContainerAllocator2> & rhs)
{
  return lhs.hand_speed == rhs.hand_speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_75_msgs::Hand_Speed_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Hand_Speed_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_75_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c60da357dfc1989f0a4de469bbeae28";
  }

  static const char* value(const ::rm_75_msgs::Hand_Speed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c60da357dfc1989ULL;
  static const uint64_t static_value2 = 0xf0a4de469bbeae28ULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_75_msgs/Hand_Speed";
  }

  static const char* value(const ::rm_75_msgs::Hand_Speed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#设置灵巧手关节速度\n"
"uint16 hand_speed         #手指速度，范围：1~1000\n"
;
  }

  static const char* value(const ::rm_75_msgs::Hand_Speed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.hand_speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Hand_Speed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_75_msgs::Hand_Speed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_75_msgs::Hand_Speed_<ContainerAllocator>& v)
  {
    s << indent << "hand_speed: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.hand_speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_75_MSGS_MESSAGE_HAND_SPEED_H
