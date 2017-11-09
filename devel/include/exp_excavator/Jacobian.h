// Generated by gencpp from file exp_excavator/Jacobian.msg
// DO NOT EDIT!


#ifndef EXP_EXCAVATOR_MESSAGE_JACOBIAN_H
#define EXP_EXCAVATOR_MESSAGE_JACOBIAN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace exp_excavator
{
template <class ContainerAllocator>
struct Jacobian_
{
  typedef Jacobian_<ContainerAllocator> Type;

  Jacobian_()
    : header()
    , dxdtboom(0.0)
    , dxdtarm(0.0)
    , dxdtbucket(0.0)
    , dzdtboom(0.0)
    , dzdtarm(0.0)
    , dzdtbucket(0.0)
    , dphdtboom(0.0)
    , dphdtarm(0.0)
    , dphdtbucket(0.0)  {
    }
  Jacobian_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , dxdtboom(0.0)
    , dxdtarm(0.0)
    , dxdtbucket(0.0)
    , dzdtboom(0.0)
    , dzdtarm(0.0)
    , dzdtbucket(0.0)
    , dphdtboom(0.0)
    , dphdtarm(0.0)
    , dphdtbucket(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _dxdtboom_type;
  _dxdtboom_type dxdtboom;

   typedef double _dxdtarm_type;
  _dxdtarm_type dxdtarm;

   typedef double _dxdtbucket_type;
  _dxdtbucket_type dxdtbucket;

   typedef double _dzdtboom_type;
  _dzdtboom_type dzdtboom;

   typedef double _dzdtarm_type;
  _dzdtarm_type dzdtarm;

   typedef double _dzdtbucket_type;
  _dzdtbucket_type dzdtbucket;

   typedef double _dphdtboom_type;
  _dphdtboom_type dphdtboom;

   typedef double _dphdtarm_type;
  _dphdtarm_type dphdtarm;

   typedef double _dphdtbucket_type;
  _dphdtbucket_type dphdtbucket;




  typedef boost::shared_ptr< ::exp_excavator::Jacobian_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exp_excavator::Jacobian_<ContainerAllocator> const> ConstPtr;

}; // struct Jacobian_

typedef ::exp_excavator::Jacobian_<std::allocator<void> > Jacobian;

typedef boost::shared_ptr< ::exp_excavator::Jacobian > JacobianPtr;
typedef boost::shared_ptr< ::exp_excavator::Jacobian const> JacobianConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exp_excavator::Jacobian_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exp_excavator::Jacobian_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exp_excavator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'exp_excavator': ['/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exp_excavator::Jacobian_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exp_excavator::Jacobian_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::Jacobian_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp_excavator::Jacobian_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::Jacobian_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp_excavator::Jacobian_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exp_excavator::Jacobian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d027c0fe0722f555e8df21a5df02ef47";
  }

  static const char* value(const ::exp_excavator::Jacobian_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd027c0fe0722f555ULL;
  static const uint64_t static_value2 = 0xe8df21a5df02ef47ULL;
};

template<class ContainerAllocator>
struct DataType< ::exp_excavator::Jacobian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exp_excavator/Jacobian";
  }

  static const char* value(const ::exp_excavator::Jacobian_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exp_excavator::Jacobian_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float64 dxdtboom\n\
float64 dxdtarm\n\
float64 dxdtbucket\n\
float64 dzdtboom\n\
float64 dzdtarm\n\
float64 dzdtbucket\n\
float64 dphdtboom\n\
float64 dphdtarm\n\
float64 dphdtbucket\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::exp_excavator::Jacobian_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exp_excavator::Jacobian_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.dxdtboom);
      stream.next(m.dxdtarm);
      stream.next(m.dxdtbucket);
      stream.next(m.dzdtboom);
      stream.next(m.dzdtarm);
      stream.next(m.dzdtbucket);
      stream.next(m.dphdtboom);
      stream.next(m.dphdtarm);
      stream.next(m.dphdtbucket);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Jacobian_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exp_excavator::Jacobian_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exp_excavator::Jacobian_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "dxdtboom: ";
    Printer<double>::stream(s, indent + "  ", v.dxdtboom);
    s << indent << "dxdtarm: ";
    Printer<double>::stream(s, indent + "  ", v.dxdtarm);
    s << indent << "dxdtbucket: ";
    Printer<double>::stream(s, indent + "  ", v.dxdtbucket);
    s << indent << "dzdtboom: ";
    Printer<double>::stream(s, indent + "  ", v.dzdtboom);
    s << indent << "dzdtarm: ";
    Printer<double>::stream(s, indent + "  ", v.dzdtarm);
    s << indent << "dzdtbucket: ";
    Printer<double>::stream(s, indent + "  ", v.dzdtbucket);
    s << indent << "dphdtboom: ";
    Printer<double>::stream(s, indent + "  ", v.dphdtboom);
    s << indent << "dphdtarm: ";
    Printer<double>::stream(s, indent + "  ", v.dphdtarm);
    s << indent << "dphdtbucket: ";
    Printer<double>::stream(s, indent + "  ", v.dphdtbucket);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXP_EXCAVATOR_MESSAGE_JACOBIAN_H
