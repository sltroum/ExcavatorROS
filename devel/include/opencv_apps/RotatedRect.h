// Generated by gencpp from file opencv_apps/RotatedRect.msg
// DO NOT EDIT!


#ifndef OPENCV_APPS_MESSAGE_ROTATEDRECT_H
#define OPENCV_APPS_MESSAGE_ROTATEDRECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <opencv_apps/Point2D.h>
#include <opencv_apps/Size.h>

namespace opencv_apps
{
template <class ContainerAllocator>
struct RotatedRect_
{
  typedef RotatedRect_<ContainerAllocator> Type;

  RotatedRect_()
    : angle(0.0)
    , center()
    , size()  {
    }
  RotatedRect_(const ContainerAllocator& _alloc)
    : angle(0.0)
    , center(_alloc)
    , size(_alloc)  {
  (void)_alloc;
    }



   typedef double _angle_type;
  _angle_type angle;

   typedef  ::opencv_apps::Point2D_<ContainerAllocator>  _center_type;
  _center_type center;

   typedef  ::opencv_apps::Size_<ContainerAllocator>  _size_type;
  _size_type size;




  typedef boost::shared_ptr< ::opencv_apps::RotatedRect_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_apps::RotatedRect_<ContainerAllocator> const> ConstPtr;

}; // struct RotatedRect_

typedef ::opencv_apps::RotatedRect_<std::allocator<void> > RotatedRect;

typedef boost::shared_ptr< ::opencv_apps::RotatedRect > RotatedRectPtr;
typedef boost::shared_ptr< ::opencv_apps::RotatedRect const> RotatedRectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_apps::RotatedRect_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_apps::RotatedRect_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opencv_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'opencv_apps': ['/home/filippos/ros_ws/src/opencv_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::RotatedRect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::RotatedRect_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::RotatedRect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::RotatedRect_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::RotatedRect_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::RotatedRect_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_apps::RotatedRect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ae60505c52f020176686d0689b8d390";
  }

  static const char* value(const ::opencv_apps::RotatedRect_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ae60505c52f0201ULL;
  static const uint64_t static_value2 = 0x76686d0689b8d390ULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_apps::RotatedRect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_apps/RotatedRect";
  }

  static const char* value(const ::opencv_apps::RotatedRect_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_apps::RotatedRect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 angle\n\
Point2D center\n\
Size size\n\
\n\
================================================================================\n\
MSG: opencv_apps/Point2D\n\
float64 x\n\
float64 y\n\
\n\
\n\
================================================================================\n\
MSG: opencv_apps/Size\n\
float64 width\n\
float64 height\n\
\n\
";
  }

  static const char* value(const ::opencv_apps::RotatedRect_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_apps::RotatedRect_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
      stream.next(m.center);
      stream.next(m.size);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RotatedRect_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_apps::RotatedRect_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_apps::RotatedRect_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
    s << indent << "center: ";
    s << std::endl;
    Printer< ::opencv_apps::Point2D_<ContainerAllocator> >::stream(s, indent + "  ", v.center);
    s << indent << "size: ";
    s << std::endl;
    Printer< ::opencv_apps::Size_<ContainerAllocator> >::stream(s, indent + "  ", v.size);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_APPS_MESSAGE_ROTATEDRECT_H
