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
include opencv_apps/CMakeFiles/convex_hull_exe.dir/depend.make

# Include the progress variables for this target.
include opencv_apps/CMakeFiles/convex_hull_exe.dir/progress.make

# Include the compile flags for this target's objects.
include opencv_apps/CMakeFiles/convex_hull_exe.dir/flags.make

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o: opencv_apps/CMakeFiles/convex_hull_exe.dir/flags.make
opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o: opencv_apps/convex_hull.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/d-lab/ExcavatorROS.git/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o"
	cd /home/d-lab/ExcavatorROS.git/build/opencv_apps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o -c /home/d-lab/ExcavatorROS.git/build/opencv_apps/convex_hull.cpp

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.i"
	cd /home/d-lab/ExcavatorROS.git/build/opencv_apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/d-lab/ExcavatorROS.git/build/opencv_apps/convex_hull.cpp > CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.i

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.s"
	cd /home/d-lab/ExcavatorROS.git/build/opencv_apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/d-lab/ExcavatorROS.git/build/opencv_apps/convex_hull.cpp -o CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.s

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires:
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires
	$(MAKE) -f opencv_apps/CMakeFiles/convex_hull_exe.dir/build.make opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides.build
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides

opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.provides.build: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o

# Object files for target convex_hull_exe
convex_hull_exe_OBJECTS = \
"CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o"

# External object files for target convex_hull_exe
convex_hull_exe_EXTERNAL_OBJECTS =

/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: opencv_apps/CMakeFiles/convex_hull_exe.dir/build.make
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libcv_bridge.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libimage_transport.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libmessage_filters.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libnodeletlib.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libbondcpp.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libclass_loader.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/libPocoFoundation.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libdl.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libroslib.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/librospack.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libroscpp.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/librosconsole.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/liblog4cxx.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/librostime.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /opt/ros/indigo/lib/libcpp_common.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull: opencv_apps/CMakeFiles/convex_hull_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull"
	cd /home/d-lab/ExcavatorROS.git/build/opencv_apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convex_hull_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencv_apps/CMakeFiles/convex_hull_exe.dir/build: /home/d-lab/ExcavatorROS.git/devel/lib/opencv_apps/convex_hull
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/build

opencv_apps/CMakeFiles/convex_hull_exe.dir/requires: opencv_apps/CMakeFiles/convex_hull_exe.dir/convex_hull.cpp.o.requires
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/requires

opencv_apps/CMakeFiles/convex_hull_exe.dir/clean:
	cd /home/d-lab/ExcavatorROS.git/build/opencv_apps && $(CMAKE_COMMAND) -P CMakeFiles/convex_hull_exe.dir/cmake_clean.cmake
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/clean

opencv_apps/CMakeFiles/convex_hull_exe.dir/depend:
	cd /home/d-lab/ExcavatorROS.git/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/d-lab/ExcavatorROS.git/src /home/d-lab/ExcavatorROS.git/src/opencv_apps /home/d-lab/ExcavatorROS.git/build /home/d-lab/ExcavatorROS.git/build/opencv_apps /home/d-lab/ExcavatorROS.git/build/opencv_apps/CMakeFiles/convex_hull_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv_apps/CMakeFiles/convex_hull_exe.dir/depend

