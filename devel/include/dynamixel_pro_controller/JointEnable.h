// Generated by gencpp from file dynamixel_pro_controller/JointEnable.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_PRO_CONTROLLER_MESSAGE_JOINTENABLE_H
#define DYNAMIXEL_PRO_CONTROLLER_MESSAGE_JOINTENABLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dynamixel_pro_controller
{
template <class ContainerAllocator>
struct JointEnable_
{
  typedef JointEnable_<ContainerAllocator> Type;

  JointEnable_()
    : name()
    , enable(false)  {
    }
  JointEnable_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , enable(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint8_t _enable_type;
  _enable_type enable;




  typedef boost::shared_ptr< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> const> ConstPtr;

}; // struct JointEnable_

typedef ::dynamixel_pro_controller::JointEnable_<std::allocator<void> > JointEnable;

typedef boost::shared_ptr< ::dynamixel_pro_controller::JointEnable > JointEnablePtr;
typedef boost::shared_ptr< ::dynamixel_pro_controller::JointEnable const> JointEnableConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dynamixel_pro_controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'dynamixel_pro_controller': ['/home/yutak/ros_ws/src/dynamixel_pro_controller/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a37ef20262e91550d3fdac3a6dd9d01";
  }

  static const char* value(const ::dynamixel_pro_controller::JointEnable_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a37ef20262e9155ULL;
  static const uint64_t static_value2 = 0x0d3fdac3a6dd9d01ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_pro_controller/JointEnable";
  }

  static const char* value(const ::dynamixel_pro_controller::JointEnable_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
bool enable\n\
";
  }

  static const char* value(const ::dynamixel_pro_controller::JointEnable_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointEnable_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_pro_controller::JointEnable_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_pro_controller::JointEnable_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_PRO_CONTROLLER_MESSAGE_JOINTENABLE_H
