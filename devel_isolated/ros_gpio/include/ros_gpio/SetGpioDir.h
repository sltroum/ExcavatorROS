// Generated by gencpp from file ros_gpio/SetGpioDir.msg
// DO NOT EDIT!


#ifndef ROS_GPIO_MESSAGE_SETGPIODIR_H
#define ROS_GPIO_MESSAGE_SETGPIODIR_H

#include <ros/service_traits.h>


#include <ros_gpio/SetGpioDirRequest.h>
#include <ros_gpio/SetGpioDirResponse.h>


namespace ros_gpio
{

struct SetGpioDir
{

typedef SetGpioDirRequest Request;
typedef SetGpioDirResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetGpioDir
} // namespace ros_gpio


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_gpio::SetGpioDir > {
  static const char* value()
  {
    return "6d358357ecc16b0c29bb10bde80568e7";
  }

  static const char* value(const ::ros_gpio::SetGpioDir&) { return value(); }
};

template<>
struct DataType< ::ros_gpio::SetGpioDir > {
  static const char* value()
  {
    return "ros_gpio/SetGpioDir";
  }

  static const char* value(const ::ros_gpio::SetGpioDir&) { return value(); }
};


// service_traits::MD5Sum< ::ros_gpio::SetGpioDirRequest> should match 
// service_traits::MD5Sum< ::ros_gpio::SetGpioDir > 
template<>
struct MD5Sum< ::ros_gpio::SetGpioDirRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_gpio::SetGpioDir >::value();
  }
  static const char* value(const ::ros_gpio::SetGpioDirRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_gpio::SetGpioDirRequest> should match 
// service_traits::DataType< ::ros_gpio::SetGpioDir > 
template<>
struct DataType< ::ros_gpio::SetGpioDirRequest>
{
  static const char* value()
  {
    return DataType< ::ros_gpio::SetGpioDir >::value();
  }
  static const char* value(const ::ros_gpio::SetGpioDirRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_gpio::SetGpioDirResponse> should match 
// service_traits::MD5Sum< ::ros_gpio::SetGpioDir > 
template<>
struct MD5Sum< ::ros_gpio::SetGpioDirResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_gpio::SetGpioDir >::value();
  }
  static const char* value(const ::ros_gpio::SetGpioDirResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_gpio::SetGpioDirResponse> should match 
// service_traits::DataType< ::ros_gpio::SetGpioDir > 
template<>
struct DataType< ::ros_gpio::SetGpioDirResponse>
{
  static const char* value()
  {
    return DataType< ::ros_gpio::SetGpioDir >::value();
  }
  static const char* value(const ::ros_gpio::SetGpioDirResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_GPIO_MESSAGE_SETGPIODIR_H
