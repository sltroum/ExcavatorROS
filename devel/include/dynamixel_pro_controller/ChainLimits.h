// Generated by gencpp from file dynamixel_pro_controller/ChainLimits.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_PRO_CONTROLLER_MESSAGE_CHAINLIMITS_H
#define DYNAMIXEL_PRO_CONTROLLER_MESSAGE_CHAINLIMITS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dynamixel_pro_controller/JointLimits.h>

namespace dynamixel_pro_controller
{
template <class ContainerAllocator>
struct ChainLimits_
{
  typedef ChainLimits_<ContainerAllocator> Type;

  ChainLimits_()
    : list()  {
    }
  ChainLimits_(const ContainerAllocator& _alloc)
    : list(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >::other >  _list_type;
  _list_type list;




  typedef boost::shared_ptr< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> const> ConstPtr;

}; // struct ChainLimits_

typedef ::dynamixel_pro_controller::ChainLimits_<std::allocator<void> > ChainLimits;

typedef boost::shared_ptr< ::dynamixel_pro_controller::ChainLimits > ChainLimitsPtr;
typedef boost::shared_ptr< ::dynamixel_pro_controller::ChainLimits const> ChainLimitsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b47be590d3fb3136f9c73af0da18f610";
  }

  static const char* value(const ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb47be590d3fb3136ULL;
  static const uint64_t static_value2 = 0xf9c73af0da18f610ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_pro_controller/ChainLimits";
  }

  static const char* value(const ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "JointLimits[] list\n\
================================================================================\n\
MSG: dynamixel_pro_controller/JointLimits\n\
string name\n\
float64 min_angle\n\
float64 max_angle\n\
";
  }

  static const char* value(const ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChainLimits_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_pro_controller::ChainLimits_<ContainerAllocator>& v)
  {
    s << indent << "list[]" << std::endl;
    for (size_t i = 0; i < v.list.size(); ++i)
    {
      s << indent << "  list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dynamixel_pro_controller::JointLimits_<ContainerAllocator> >::stream(s, indent + "    ", v.list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_PRO_CONTROLLER_MESSAGE_CHAINLIMITS_H
