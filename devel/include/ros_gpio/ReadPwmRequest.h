// Generated by gencpp from file ros_gpio/ReadPwmRequest.msg
// DO NOT EDIT!


#ifndef ROS_GPIO_MESSAGE_READPWMREQUEST_H
#define ROS_GPIO_MESSAGE_READPWMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_gpio
{
template <class ContainerAllocator>
struct ReadPwmRequest_
{
  typedef ReadPwmRequest_<ContainerAllocator> Type;

  ReadPwmRequest_()
    : pin(0)  {
    }
  ReadPwmRequest_(const ContainerAllocator& _alloc)
    : pin(0)  {
  (void)_alloc;
    }



   typedef uint8_t _pin_type;
  _pin_type pin;




  typedef boost::shared_ptr< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReadPwmRequest_

typedef ::ros_gpio::ReadPwmRequest_<std::allocator<void> > ReadPwmRequest;

typedef boost::shared_ptr< ::ros_gpio::ReadPwmRequest > ReadPwmRequestPtr;
typedef boost::shared_ptr< ::ros_gpio::ReadPwmRequest const> ReadPwmRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_gpio::ReadPwmRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_gpio

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'ros_gpio': ['/home/yutak/ros_ws/src/ros_gpio/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "41386d6ac585eedbab7b4d4f9192cbcc";
  }

  static const char* value(const ::ros_gpio::ReadPwmRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x41386d6ac585eedbULL;
  static const uint64_t static_value2 = 0xab7b4d4f9192cbccULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_gpio/ReadPwmRequest";
  }

  static const char* value(const ::ros_gpio::ReadPwmRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 pin\n\
";
  }

  static const char* value(const ::ros_gpio::ReadPwmRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pin);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadPwmRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_gpio::ReadPwmRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_gpio::ReadPwmRequest_<ContainerAllocator>& v)
  {
    s << indent << "pin: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pin);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_GPIO_MESSAGE_READPWMREQUEST_H
