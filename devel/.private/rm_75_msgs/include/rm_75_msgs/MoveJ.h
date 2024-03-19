// Generated by gencpp from file rm_75_msgs/MoveJ.msg
// DO NOT EDIT!


#ifndef RM_75_MSGS_MESSAGE_MOVEJ_H
#define RM_75_MSGS_MESSAGE_MOVEJ_H


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



   typedef boost::array<float, 7>  _joint_type;
  _joint_type joint;

   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::rm_75_msgs::MoveJ_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_75_msgs::MoveJ_<ContainerAllocator> const> ConstPtr;

}; // struct MoveJ_

typedef ::rm_75_msgs::MoveJ_<std::allocator<void> > MoveJ;

typedef boost::shared_ptr< ::rm_75_msgs::MoveJ > MoveJPtr;
typedef boost::shared_ptr< ::rm_75_msgs::MoveJ const> MoveJConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_75_msgs::MoveJ_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_75_msgs::MoveJ_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_75_msgs::MoveJ_<ContainerAllocator1> & lhs, const ::rm_75_msgs::MoveJ_<ContainerAllocator2> & rhs)
{
  return lhs.joint == rhs.joint &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_75_msgs::MoveJ_<ContainerAllocator1> & lhs, const ::rm_75_msgs::MoveJ_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_75_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::MoveJ_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::MoveJ_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::MoveJ_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "22d46e6d96280e79ad6f5d786447086d";
  }

  static const char* value(const ::rm_75_msgs::MoveJ_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x22d46e6d96280e79ULL;
  static const uint64_t static_value2 = 0xad6f5d786447086dULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_75_msgs/MoveJ";
  }

  static const char* value(const ::rm_75_msgs::MoveJ_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[7] joint\n"
"float32 speed\n"
;
  }

  static const char* value(const ::rm_75_msgs::MoveJ_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
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
struct Printer< ::rm_75_msgs::MoveJ_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_75_msgs::MoveJ_<ContainerAllocator>& v)
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

#endif // RM_75_MSGS_MESSAGE_MOVEJ_H
