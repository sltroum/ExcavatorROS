# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_gpio: 1 messages, 18 services")

set(MSG_I_FLAGS "-Iros_gpio:/home/yutak/ros_ws/src/ros_gpio/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_gpio_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv" ""
)

get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv" NAME_WE)
add_custom_target(_ros_gpio_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_gpio" "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)

### Generating Services
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)
_generate_srv_cpp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
)

### Generating Module File
_generate_module_cpp(ros_gpio
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_gpio_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_gpio_generate_messages ros_gpio_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_cpp _ros_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_gpio_gencpp)
add_dependencies(ros_gpio_gencpp ros_gpio_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_gpio_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)

### Generating Services
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)
_generate_srv_lisp(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
)

### Generating Module File
_generate_module_lisp(ros_gpio
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_gpio_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_gpio_generate_messages ros_gpio_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_lisp _ros_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_gpio_genlisp)
add_dependencies(ros_gpio_genlisp ros_gpio_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_gpio_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)

### Generating Services
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)
_generate_srv_py(ros_gpio
  "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
)

### Generating Module File
_generate_module_py(ros_gpio
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_gpio_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_gpio_generate_messages ros_gpio_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenUart.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/msg/GpioState.msg" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WritePwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ClosePwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseUart.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPulseWidth.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmPeriod.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioDir.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/OpenGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StartPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/StopPwm.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/CloseGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/WriteGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/ReadGpio.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_percent.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetGpioMode.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yutak/ros_ws/src/ros_gpio/srv/SetPwmDuty_ms.srv" NAME_WE)
add_dependencies(ros_gpio_generate_messages_py _ros_gpio_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_gpio_genpy)
add_dependencies(ros_gpio_genpy ros_gpio_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_gpio_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_gpio
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_gpio_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_gpio
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_gpio_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_gpio
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ros_gpio_generate_messages_py std_msgs_generate_messages_py)
