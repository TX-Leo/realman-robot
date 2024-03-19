// Generated by gencpp from file rm_75_msgs/Gripper_Set.msg
// DO NOT EDIT!


#ifndef RM_75_MSGS_MESSAGE_GRIPPER_SET_H
#define RM_75_MSGS_MESSAGE_GRIPPER_SET_H


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
struct Gripper_Set_
{
  typedef Gripper_Set_<ContainerAllocator> Type;

  Gripper_Set_()
    : position(0)  {
    }
  Gripper_Set_(const ContainerAllocator& _alloc)
    : position(0)  {
  (void)_alloc;
    }



   typedef uint16_t _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> const> ConstPtr;

}; // struct Gripper_Set_

typedef ::rm_75_msgs::Gripper_Set_<std::allocator<void> > Gripper_Set;

typedef boost::shared_ptr< ::rm_75_msgs::Gripper_Set > Gripper_SetPtr;
typedef boost::shared_ptr< ::rm_75_msgs::Gripper_Set const> Gripper_SetConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_75_msgs::Gripper_Set_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_75_msgs::Gripper_Set_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Gripper_Set_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_75_msgs::Gripper_Set_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Gripper_Set_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_75_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e6fa9d1b49571c7fff8bae5e451e5e59";
  }

  static const char* value(const ::rm_75_msgs::Gripper_Set_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe6fa9d1b49571c7fULL;
  static const uint64_t static_value2 = 0xff8bae5e451e5e59ULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_75_msgs/Gripper_Set";
  }

  static const char* value(const ::rm_75_msgs::Gripper_Set_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#设置手爪到固定位置，手爪到位置后或者所受力超过阈值后停止\n"
"uint16 position   #手爪目标位置，范围：1～1000,代表手爪开口度：0～70mm\n"
;
  }

  static const char* value(const ::rm_75_msgs::Gripper_Set_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gripper_Set_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_75_msgs::Gripper_Set_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_75_msgs::Gripper_Set_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_75_MSGS_MESSAGE_GRIPPER_SET_H
