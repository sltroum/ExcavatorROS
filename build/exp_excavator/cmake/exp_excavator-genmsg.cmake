# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exp_excavator: 5 messages, 0 services")

set(MSG_I_FLAGS "-Iexp_excavator:/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exp_excavator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg" NAME_WE)
add_custom_target(_exp_excavator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exp_excavator" "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg" ""
)

get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg" NAME_WE)
add_custom_target(_exp_excavator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exp_excavator" "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg" NAME_WE)
add_custom_target(_exp_excavator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exp_excavator" "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg" ""
)

get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg" NAME_WE)
add_custom_target(_exp_excavator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exp_excavator" "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg" ""
)

get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg" NAME_WE)
add_custom_target(_exp_excavator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exp_excavator" "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator
)
_generate_msg_cpp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator
)
_generate_msg_cpp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator
)
_generate_msg_cpp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator
)
_generate_msg_cpp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator
)

### Generating Services

### Generating Module File
_generate_module_cpp(exp_excavator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exp_excavator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exp_excavator_generate_messages exp_excavator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_cpp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_cpp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_cpp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_cpp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_cpp _exp_excavator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exp_excavator_gencpp)
add_dependencies(exp_excavator_gencpp exp_excavator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exp_excavator_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator
)
_generate_msg_lisp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator
)
_generate_msg_lisp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator
)
_generate_msg_lisp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator
)
_generate_msg_lisp(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator
)

### Generating Services

### Generating Module File
_generate_module_lisp(exp_excavator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exp_excavator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exp_excavator_generate_messages exp_excavator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_lisp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_lisp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_lisp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_lisp _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_lisp _exp_excavator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exp_excavator_genlisp)
add_dependencies(exp_excavator_genlisp exp_excavator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exp_excavator_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator
)
_generate_msg_py(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator
)
_generate_msg_py(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator
)
_generate_msg_py(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator
)
_generate_msg_py(exp_excavator
  "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator
)

### Generating Services

### Generating Module File
_generate_module_py(exp_excavator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exp_excavator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exp_excavator_generate_messages exp_excavator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/Jacobian.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_py _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/PowerMachine.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_py _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointValues.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_py _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCalibration.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_py _exp_excavator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/d-lab/ExcavatorROS.git/src/exp_excavator/msg/JointCommand.msg" NAME_WE)
add_dependencies(exp_excavator_generate_messages_py _exp_excavator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exp_excavator_genpy)
add_dependencies(exp_excavator_genpy exp_excavator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exp_excavator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp_excavator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(exp_excavator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp_excavator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(exp_excavator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp_excavator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(exp_excavator_generate_messages_py std_msgs_generate_messages_py)
endif()
