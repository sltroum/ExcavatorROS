# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/d-lab/ExcavatorROS.git/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/d-lab/ExcavatorROS.git/build

# Include any dependencies generated for this target.
include ex_model/CMakeFiles/test_joystick.dir/depend.make

# Include the progress variables for this target.
include ex_model/CMakeFiles/test_joystick.dir/progress.make

# Include the compile flags for this target's objects.
include ex_model/CMakeFiles/test_joystick.dir/flags.make

ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o: ex_model/CMakeFiles/test_joystick.dir/flags.make
ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o: /home/d-lab/ExcavatorROS.git/src/ex_model/src/test_joystick.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/d-lab/ExcavatorROS.git/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o"
	cd /home/d-lab/ExcavatorROS.git/build/ex_model && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o -c /home/d-lab/ExcavatorROS.git/src/ex_model/src/test_joystick.cpp

ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_joystick.dir/src/test_joystick.cpp.i"
	cd /home/d-lab/ExcavatorROS.git/build/ex_model && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/d-lab/ExcavatorROS.git/src/ex_model/src/test_joystick.cpp > CMakeFiles/test_joystick.dir/src/test_joystick.cpp.i

ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_joystick.dir/src/test_joystick.cpp.s"
	cd /home/d-lab/ExcavatorROS.git/build/ex_model && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/d-lab/ExcavatorROS.git/src/ex_model/src/test_joystick.cpp -o CMakeFiles/test_joystick.dir/src/test_joystick.cpp.s

ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.requires:
.PHONY : ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.requires

ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.provides: ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.requires
	$(MAKE) -f ex_model/CMakeFiles/test_joystick.dir/build.make ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.provides.build
.PHONY : ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.provides

ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.provides.build: ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o

# Object files for target test_joystick
test_joystick_OBJECTS = \
"CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o"

# External object files for target test_joystick
test_joystick_EXTERNAL_OBJECTS =

/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: ex_model/CMakeFiles/test_joystick.dir/build.make
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libtf.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libtf2_ros.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libactionlib.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libmessage_filters.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libtf2.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libroscpp.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/librosconsole.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/liblog4cxx.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/librostime.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /opt/ros/indigo/lib/libcpp_common.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick: ex_model/CMakeFiles/test_joystick.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick"
	cd /home/d-lab/ExcavatorROS.git/build/ex_model && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_joystick.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ex_model/CMakeFiles/test_joystick.dir/build: /home/d-lab/ExcavatorROS.git/devel/lib/ex_model/test_joystick
.PHONY : ex_model/CMakeFiles/test_joystick.dir/build

ex_model/CMakeFiles/test_joystick.dir/requires: ex_model/CMakeFiles/test_joystick.dir/src/test_joystick.cpp.o.requires
.PHONY : ex_model/CMakeFiles/test_joystick.dir/requires

ex_model/CMakeFiles/test_joystick.dir/clean:
	cd /home/d-lab/ExcavatorROS.git/build/ex_model && $(CMAKE_COMMAND) -P CMakeFiles/test_joystick.dir/cmake_clean.cmake
.PHONY : ex_model/CMakeFiles/test_joystick.dir/clean

ex_model/CMakeFiles/test_joystick.dir/depend:
	cd /home/d-lab/ExcavatorROS.git/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/d-lab/ExcavatorROS.git/src /home/d-lab/ExcavatorROS.git/src/ex_model /home/d-lab/ExcavatorROS.git/build /home/d-lab/ExcavatorROS.git/build/ex_model /home/d-lab/ExcavatorROS.git/build/ex_model/CMakeFiles/test_joystick.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ex_model/CMakeFiles/test_joystick.dir/depend

