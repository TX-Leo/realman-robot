// Generated by gencpp from file dual_arm_msgs/LiftState.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_LIFTSTATE_H
#define DUAL_ARM_MSGS_MESSAGE_LIFTSTATE_H


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
struct LiftState_
{
  typedef LiftState_<ContainerAllocator> Type;

  LiftState_()
    : height(0)
    , current(0)
    , err_flag(0)
    , mode(0)  {
    }
  LiftState_(const ContainerAllocator& _alloc)
    : height(0)
    , current(0)
    , err_flag(0)
    , mode(0)  {
  (void)_alloc;
    }



   typedef int16_t _height_type;
  _height_type height;

   typedef int16_t _current_type;
  _current_type current;

   typedef uint16_t _err_flag_type;
  _err_flag_type err_flag;

   typedef int8_t _mode_type;
  _mode_type mode;





  typedef boost::shared_ptr< ::dual_arm_msgs::LiftState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::LiftState_<ContainerAllocator> const> ConstPtr;

}; // struct LiftState_

typedef ::dual_arm_msgs::LiftState_<std::allocator<void> > LiftState;

typedef boost::shared_ptr< ::dual_arm_msgs::LiftState > LiftStatePtr;
typedef boost::shared_ptr< ::dual_arm_msgs::LiftState const> LiftStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::LiftState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::LiftState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::LiftState_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::LiftState_<ContainerAllocator2> & rhs)
{
  return lhs.height == rhs.height &&
    lhs.current == rhs.current &&
    lhs.err_flag == rhs.err_flag &&
    lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::LiftState_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::LiftState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::LiftState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::LiftState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::LiftState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c5ca7de51eef8dade42274475c73f94f";
  }

  static const char* value(const ::dual_arm_msgs::LiftState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc5ca7de51eef8dadULL;
  static const uint64_t static_value2 = 0xe42274475c73f94fULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/LiftState";
  }

  static const char* value(const ::dual_arm_msgs::LiftState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 height	#当前高度\n"
"int16 current	#当前电流\n"
"uint16 err_flag	#驱动错误代码\n"
"byte mode	#当前升降状态，0-空闲，1-正方向速度运动，2-正方向位置运动，3-负方向速度运动，4-负方向位置运动\n"
"\n"
;
  }

  static const char* value(const ::dual_arm_msgs::LiftState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.height);
      stream.next(m.current);
      stream.next(m.err_flag);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LiftState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::LiftState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::LiftState_<ContainerAllocator>& v)
  {
    s << indent << "height: ";
    Printer<int16_t>::stream(s, indent + "  ", v.height);
    s << indent << "current: ";
    Printer<int16_t>::stream(s, indent + "  ", v.current);
    s << indent << "err_flag: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.err_flag);
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_LIFTSTATE_H
