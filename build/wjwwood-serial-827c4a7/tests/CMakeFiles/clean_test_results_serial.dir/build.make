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

# Utility rule file for clean_test_results_serial.

# Include the progress variables for this target.
include wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/progress.make

wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial:
	cd /home/d-lab/ExcavatorROS.git/build/wjwwood-serial-827c4a7/tests && /usr/bin/python /opt/ros/indigo/share/catkin/cmake/test/remove_test_results.py /home/d-lab/ExcavatorROS.git/build/test_results/serial

clean_test_results_serial: wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial
clean_test_results_serial: wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/build.make
.PHONY : clean_test_results_serial

# Rule to build all files generated by this target.
wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/build: clean_test_results_serial
.PHONY : wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/build

wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/clean:
	cd /home/d-lab/ExcavatorROS.git/build/wjwwood-serial-827c4a7/tests && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_serial.dir/cmake_clean.cmake
.PHONY : wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/clean

wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/depend:
	cd /home/d-lab/ExcavatorROS.git/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/d-lab/ExcavatorROS.git/src /home/d-lab/ExcavatorROS.git/src/wjwwood-serial-827c4a7/tests /home/d-lab/ExcavatorROS.git/build /home/d-lab/ExcavatorROS.git/build/wjwwood-serial-827c4a7/tests /home/d-lab/ExcavatorROS.git/build/wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wjwwood-serial-827c4a7/tests/CMakeFiles/clean_test_results_serial.dir/depend

