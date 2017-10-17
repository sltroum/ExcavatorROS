# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "apriltags_ros: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iapriltags_ros:/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(apriltags_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg" NAME_WE)
add_custom_target(_apriltags_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "apriltags_ros" "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:apriltags_ros/AprilTagDetection:std_msgs/Header"
)

get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg" NAME_WE)
add_custom_target(_apriltags_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "apriltags_ros" "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(apriltags_ros
  "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags_ros
)
_generate_msg_cpp(apriltags_ros
  "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(apriltags_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(apriltags_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(apriltags_ros_generate_messages apriltags_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(apriltags_ros_generate_messages_cpp _apriltags_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(apriltags_ros_generate_messages_cpp _apriltags_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(apriltags_ros_gencpp)
add_dependencies(apriltags_ros_gencpp apriltags_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS apriltags_ros_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(apriltags_ros
  "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags_ros
)
_generate_msg_lisp(apriltags_ros
  "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(apriltags_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(apriltags_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(apriltags_ros_generate_messages apriltags_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(apriltags_ros_generate_messages_lisp _apriltags_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(apriltags_ros_generate_messages_lisp _apriltags_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(apriltags_ros_genlisp)
add_dependencies(apriltags_ros_genlisp apriltags_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS apriltags_ros_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(apriltags_ros
  "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags_ros
)
_generate_msg_py(apriltags_ros
  "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags_ros
)

### Generating Services

### Generating Module File
_generate_module_py(apriltags_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(apriltags_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(apriltags_ros_generate_messages apriltags_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(apriltags_ros_generate_messages_py _apriltags_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/apriltags_ros-indigo-devel/apriltags_ros/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(apriltags_ros_generate_messages_py _apriltags_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(apriltags_ros_genpy)
add_dependencies(apriltags_ros_genpy apriltags_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS apriltags_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(apriltags_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(apriltags_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(apriltags_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(apriltags_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(apriltags_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(apriltags_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
