// Generated by gencpp from file rm_75_msgs/Stop_Teach.msg
// DO NOT EDIT!


#ifndef RM_75_MSGS_MESSAGE_STOP_TEACH_H
#define RM_75_MSGS_MESSAGE_STOP_TEACH_H


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
struct Stop_Teach_
{
  typedef Stop_Teach_<ContainerAllocator> Type;

  Stop_Teach_()
    : teach_stop()  {
    }
  Stop_Teach_(const ContainerAllocator& _alloc)
    : teach_stop(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _teach_stop_type;
  _teach_stop_type teach_stop;





  typedef boost::shared_ptr< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> const> ConstPtr;

}; // struct Stop_Teach_

typedef ::rm_75_msgs::Stop_Teach_<std::allocator<void> > Stop_Teach;

typedef boost::shared_ptr< ::rm_75_msgs::Stop_Teach > Stop_TeachPtr;
typedef boost::shared_ptr< ::rm_75_msgs::Stop_Teach const> Stop_TeachConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_75_msgs::Stop_Teach_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_75_msgs::Stop_Teach_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Stop_Teach_<ContainerAllocator2> & rhs)
{
  return lhs.teach_stop == rhs.teach_stop;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_75_msgs::Stop_Teach_<ContainerAllocator1> & lhs, const ::rm_75_msgs::Stop_Teach_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_75_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
{
  static const char* value()
  {
    return "92f5433909a48bf4fc2cea4eb11481b4";
  }

  static const char* value(const ::rm_75_msgs::Stop_Teach_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x92f5433909a48bf4ULL;
  static const uint64_t static_value2 = 0xfc2cea4eb11481b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_75_msgs/Stop_Teach";
  }

  static const char* value(const ::rm_75_msgs::Stop_Teach_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#示教停止\n"
"string teach_stop\n"
;
  }

  static const char* value(const ::rm_75_msgs::Stop_Teach_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.teach_stop);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Stop_Teach_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_75_msgs::Stop_Teach_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_75_msgs::Stop_Teach_<ContainerAllocator>& v)
  {
    s << indent << "teach_stop: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.teach_stop);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_75_MSGS_MESSAGE_STOP_TEACH_H