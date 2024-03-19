// Generated by gencpp from file dual_arm_msgs/Lift_Height.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_LIFT_HEIGHT_H
#define DUAL_ARM_MSGS_MESSAGE_LIFT_HEIGHT_H


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
struct Lift_Height_
{
  typedef Lift_Height_<ContainerAllocator> Type;

  Lift_Height_()
    : height(0)
    , speed(0)  {
    }
  Lift_Height_(const ContainerAllocator& _alloc)
    : height(0)
    , speed(0)  {
  (void)_alloc;
    }



   typedef uint16_t _height_type;
  _height_type height;

   typedef uint16_t _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> const> ConstPtr;

}; // struct Lift_Height_

typedef ::dual_arm_msgs::Lift_Height_<std::allocator<void> > Lift_Height;

typedef boost::shared_ptr< ::dual_arm_msgs::Lift_Height > Lift_HeightPtr;
typedef boost::shared_ptr< ::dual_arm_msgs::Lift_Height const> Lift_HeightConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::Lift_Height_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::Lift_Height_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Lift_Height_<ContainerAllocator2> & rhs)
{
  return lhs.height == rhs.height &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::Lift_Height_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Lift_Height_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce92ed992837df41fa85260a11a529b8";
  }

  static const char* value(const ::dual_arm_msgs::Lift_Height_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce92ed992837df41ULL;
  static const uint64_t static_value2 = 0xfa85260a11a529b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/Lift_Height";
  }

  static const char* value(const ::dual_arm_msgs::Lift_Height_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#升降机构运行到指定高度\n"
"uint16 height        #目标高度，单位 mm，范围：0~2600\n"
"uint16 speed         #速度百分比，1~100\n"
;
  }

  static const char* value(const ::dual_arm_msgs::Lift_Height_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.height);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Lift_Height_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::Lift_Height_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::Lift_Height_<ContainerAllocator>& v)
  {
    s << indent << "height: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.height);
    s << indent << "speed: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_LIFT_HEIGHT_H
