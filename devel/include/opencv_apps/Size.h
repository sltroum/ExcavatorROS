// Generated by gencpp from file opencv_apps/Size.msg
// DO NOT EDIT!


#ifndef OPENCV_APPS_MESSAGE_SIZE_H
#define OPENCV_APPS_MESSAGE_SIZE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace opencv_apps
{
template <class ContainerAllocator>
struct Size_
{
  typedef Size_<ContainerAllocator> Type;

  Size_()
    : width(0.0)
    , height(0.0)  {
    }
  Size_(const ContainerAllocator& _alloc)
    : width(0.0)
    , height(0.0)  {
  (void)_alloc;
    }



   typedef double _width_type;
  _width_type width;

   typedef double _height_type;
  _height_type height;




  typedef boost::shared_ptr< ::opencv_apps::Size_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_apps::Size_<ContainerAllocator> const> ConstPtr;

}; // struct Size_

typedef ::opencv_apps::Size_<std::allocator<void> > Size;

typedef boost::shared_ptr< ::opencv_apps::Size > SizePtr;
typedef boost::shared_ptr< ::opencv_apps::Size const> SizeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_apps::Size_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_apps::Size_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opencv_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'opencv_apps': ['/home/d-lab/ExcavatorROS.git/src/opencv_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::Size_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::Size_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::Size_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::Size_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::Size_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::Size_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_apps::Size_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f86522e647336fb10b55359fe003f673";
  }

  static const char* value(const ::opencv_apps::Size_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf86522e647336fb1ULL;
  static const uint64_t static_value2 = 0x0b55359fe003f673ULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_apps::Size_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_apps/Size";
  }

  static const char* value(const ::opencv_apps::Size_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_apps::Size_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 width\n\
float64 height\n\
\n\
";
  }

  static const char* value(const ::opencv_apps::Size_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_apps::Size_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.width);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Size_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_apps::Size_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_apps::Size_<ContainerAllocator>& v)
  {
    s << indent << "width: ";
    Printer<double>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_APPS_MESSAGE_SIZE_H
