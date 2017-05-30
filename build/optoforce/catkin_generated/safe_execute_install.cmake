execute_process(COMMAND "/home/filippos/ros_ws/build/optoforce/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/filippos/ros_ws/build/optoforce/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
