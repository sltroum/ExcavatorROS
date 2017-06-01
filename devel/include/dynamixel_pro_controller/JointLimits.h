// Generated by gencpp from file dynamixel_pro_controller/JointLimits.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_PRO_CONTROLLER_MESSAGE_JOINTLIMITS_H
#define DYNAMIXEL_PRO_CONTROLLER_MESSAGE_JOINTLIMITS_H


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
struct JointLimits_
{
  typedef JointLimits_<ContainerAllocator> Type;

  JointLimits_()
    : name()
    , min_angle(0.0)
    , max_angle(0.0)  {
    }
  JointLimits_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , min_angle(0.0)
    , max_angle(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef double _min_angle_type;
  _min_angle_type min_angle;

   typedef double _max_angle_type;
  _max_angle_type max_angle;




  typedef boost::shared_ptr< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> const> ConstPtr;

}; // struct JointLimits_

typedef ::dynamixel_pro_controller::JointLimits_<std::allocator<void> > JointLimits;

typedef boost::shared_ptr< ::dynamixel_pro_controller::JointLimits > JointLimitsPtr;
typedef boost::shared_ptr< ::dynamixel_pro_controller::JointLimits const> JointLimitsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dynamixel_pro_controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'dynamixel_pro_controller': ['/home/filippos/ros_ws/src/dynamixel_pro_controller/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "412154068b5c07c08fd1b683d6e1b4a6";
  }

  static const char* value(const ::dynamixel_pro_controller::JointLimits_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x412154068b5c07c0ULL;
  static const uint64_t static_value2 = 0x8fd1b683d6e1b4a6ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_pro_controller/JointLimits";
  }

  static const char* value(const ::dynamixel_pro_controller::JointLimits_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
float64 min_angle\n\
float64 max_angle\n\
";
  }

  static const char* value(const ::dynamixel_pro_controller::JointLimits_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.min_angle);
      stream.next(m.max_angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointLimits_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_pro_controller::JointLimits_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "min_angle: ";
    Printer<double>::stream(s, indent + "  ", v.min_angle);
    s << indent << "max_angle: ";
    Printer<double>::stream(s, indent + "  ", v.max_angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_PRO_CONTROLLER_MESSAGE_JOINTLIMITS_H
