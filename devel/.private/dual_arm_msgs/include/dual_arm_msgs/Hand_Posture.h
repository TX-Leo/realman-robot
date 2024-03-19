// Generated by gencpp from file dual_arm_msgs/Hand_Posture.msg
// DO NOT EDIT!


#ifndef DUAL_ARM_MSGS_MESSAGE_HAND_POSTURE_H
#define DUAL_ARM_MSGS_MESSAGE_HAND_POSTURE_H


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
struct Hand_Posture_
{
  typedef Hand_Posture_<ContainerAllocator> Type;

  Hand_Posture_()
    : posture_num(0)  {
    }
  Hand_Posture_(const ContainerAllocator& _alloc)
    : posture_num(0)  {
  (void)_alloc;
    }



   typedef uint16_t _posture_num_type;
  _posture_num_type posture_num;





  typedef boost::shared_ptr< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> const> ConstPtr;

}; // struct Hand_Posture_

typedef ::dual_arm_msgs::Hand_Posture_<std::allocator<void> > Hand_Posture;

typedef boost::shared_ptr< ::dual_arm_msgs::Hand_Posture > Hand_PosturePtr;
typedef boost::shared_ptr< ::dual_arm_msgs::Hand_Posture const> Hand_PostureConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator2> & rhs)
{
  return lhs.posture_num == rhs.posture_num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator1> & lhs, const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dual_arm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86dfac3ab8ac2be02ec067def631c96c";
  }

  static const char* value(const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86dfac3ab8ac2be0ULL;
  static const uint64_t static_value2 = 0x2ec067def631c96cULL;
};

template<class ContainerAllocator>
struct DataType< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dual_arm_msgs/Hand_Posture";
  }

  static const char* value(const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#设置灵巧手手势\n"
"uint16 posture_num         #预先保存在灵巧手内的手势序号，范围：1~40\n"
;
  }

  static const char* value(const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.posture_num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Hand_Posture_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dual_arm_msgs::Hand_Posture_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dual_arm_msgs::Hand_Posture_<ContainerAllocator>& v)
  {
    s << indent << "posture_num: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.posture_num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUAL_ARM_MSGS_MESSAGE_HAND_POSTURE_H