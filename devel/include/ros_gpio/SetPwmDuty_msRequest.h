// Generated by gencpp from file ros_gpio/SetPwmDuty_msRequest.msg
// DO NOT EDIT!


#ifndef ROS_GPIO_MESSAGE_SETPWMDUTY_MSREQUEST_H
#define ROS_GPIO_MESSAGE_SETPWMDUTY_MSREQUEST_H


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
struct SetPwmDuty_msRequest_
{
  typedef SetPwmDuty_msRequest_<ContainerAllocator> Type;

  SetPwmDuty_msRequest_()
    : pin(0)
    , period_ms(0)
    , duty_ms(0.0)  {
    }
  SetPwmDuty_msRequest_(const ContainerAllocator& _alloc)
    : pin(0)
    , period_ms(0)
    , duty_ms(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _pin_type;
  _pin_type pin;

   typedef uint32_t _period_ms_type;
  _period_ms_type period_ms;

   typedef float _duty_ms_type;
  _duty_ms_type duty_ms;




  typedef boost::shared_ptr< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetPwmDuty_msRequest_

typedef ::ros_gpio::SetPwmDuty_msRequest_<std::allocator<void> > SetPwmDuty_msRequest;

typedef boost::shared_ptr< ::ros_gpio::SetPwmDuty_msRequest > SetPwmDuty_msRequestPtr;
typedef boost::shared_ptr< ::ros_gpio::SetPwmDuty_msRequest const> SetPwmDuty_msRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c07c0ce2c71bb01962d2ceb9307a7eaa";
  }

  static const char* value(const ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc07c0ce2c71bb019ULL;
  static const uint64_t static_value2 = 0x62d2ceb9307a7eaaULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_gpio/SetPwmDuty_msRequest";
  }

  static const char* value(const ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 pin\n\
uint32 period_ms\n\
float32 duty_ms\n\
";
  }

  static const char* value(const ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pin);
      stream.next(m.period_ms);
      stream.next(m.duty_ms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPwmDuty_msRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_gpio::SetPwmDuty_msRequest_<ContainerAllocator>& v)
  {
    s << indent << "pin: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pin);
    s << indent << "period_ms: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.period_ms);
    s << indent << "duty_ms: ";
    Printer<float>::stream(s, indent + "  ", v.duty_ms);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_GPIO_MESSAGE_SETPWMDUTY_MSREQUEST_H
