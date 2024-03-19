// Generated by gencpp from file rm_75_msgs/Hand_Seq.msg
// DO NOT EDIT!


#ifndef RM_75_MSGS_MESSAGE_HAND_SEQ_H
#define RM_75_MSGS_MESSAGE_HAND_SEQ_H


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
struct Hand_Seq_
{
  typedef Hand_Seq_<ContainerAllocator> Type;

  Hand_Seq_()
    : seq_num(0)  {
    }
  Hand_Seq_(const ContainerAllocator& _alloc)
    : seq_num(0)  {
  (void)_alloc;
    }



   typedef uint16_t _seq_num_type;
  _seq_num_type seq_num;





  typedef boost::shared_ptr< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> const> ConstPtr;

}; // struct Hand_Seq_

typedef ::rm_75_msgs::Hand_Seq_<std::allocator<void> > Hand_Seq;

typedef boost::shared_ptr< ::rm_75_msgs::Hand_Seq > Hand_SeqPtr;
typedef boost::shared_ptr< ::rm_75_msgs::Hand_Seq const> Hand_SeqConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_75_msgs::Hand_Seq_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_75_msgs::Hand_Seq_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Hand_Seq_<ContainerAllocator2> & rhs)
{
  return lhs.seq_num == rhs.seq_num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_75_msgs::Hand_Seq_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Hand_Seq_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_75_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
{
  static const char* value()
  {
    return "278fab2dc396c27b061e225e520f4d8c";
  }

  static const char* value(const ::rm_75_msgs::Hand_Seq_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x278fab2dc396c27bULL;
  static const uint64_t static_value2 = 0x061e225e520f4d8cULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_75_msgs/Hand_Seq";
  }

  static const char* value(const ::rm_75_msgs::Hand_Seq_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#设置灵巧手动作序列\n"
"uint16 seq_num         #预先保存在灵巧手内的序列序号，范围：1~40\n"
;
  }

  static const char* value(const ::rm_75_msgs::Hand_Seq_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.seq_num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Hand_Seq_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_75_msgs::Hand_Seq_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_75_msgs::Hand_Seq_<ContainerAllocator>& v)
  {
    s << indent << "seq_num: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.seq_num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_75_MSGS_MESSAGE_HAND_SEQ_H
