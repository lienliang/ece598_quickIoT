# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/151/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/151/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eli9/Desktop/ECE598_Simulation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/simulation.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/simulation.cpp.o: ../simulation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/simulation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/simulation.cpp.o -c /home/eli9/Desktop/ECE598_Simulation/simulation.cpp

CMakeFiles/test.dir/simulation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/simulation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eli9/Desktop/ECE598_Simulation/simulation.cpp > CMakeFiles/test.dir/simulation.cpp.i

CMakeFiles/test.dir/simulation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/simulation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eli9/Desktop/ECE598_Simulation/simulation.cpp -o CMakeFiles/test.dir/simulation.cpp.s

CMakeFiles/test.dir/modules/bus_interface.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/modules/bus_interface.cpp.o: ../modules/bus_interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test.dir/modules/bus_interface.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/modules/bus_interface.cpp.o -c /home/eli9/Desktop/ECE598_Simulation/modules/bus_interface.cpp

CMakeFiles/test.dir/modules/bus_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/modules/bus_interface.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eli9/Desktop/ECE598_Simulation/modules/bus_interface.cpp > CMakeFiles/test.dir/modules/bus_interface.cpp.i

CMakeFiles/test.dir/modules/bus_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/modules/bus_interface.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eli9/Desktop/ECE598_Simulation/modules/bus_interface.cpp -o CMakeFiles/test.dir/modules/bus_interface.cpp.s

CMakeFiles/test.dir/modules/host_cpu.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/modules/host_cpu.cpp.o: ../modules/host_cpu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/test.dir/modules/host_cpu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/modules/host_cpu.cpp.o -c /home/eli9/Desktop/ECE598_Simulation/modules/host_cpu.cpp

CMakeFiles/test.dir/modules/host_cpu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/modules/host_cpu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eli9/Desktop/ECE598_Simulation/modules/host_cpu.cpp > CMakeFiles/test.dir/modules/host_cpu.cpp.i

CMakeFiles/test.dir/modules/host_cpu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/modules/host_cpu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eli9/Desktop/ECE598_Simulation/modules/host_cpu.cpp -o CMakeFiles/test.dir/modules/host_cpu.cpp.s

CMakeFiles/test.dir/modules/PIM.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/modules/PIM.cpp.o: ../modules/PIM.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/test.dir/modules/PIM.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/modules/PIM.cpp.o -c /home/eli9/Desktop/ECE598_Simulation/modules/PIM.cpp

CMakeFiles/test.dir/modules/PIM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/modules/PIM.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eli9/Desktop/ECE598_Simulation/modules/PIM.cpp > CMakeFiles/test.dir/modules/PIM.cpp.i

CMakeFiles/test.dir/modules/PIM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/modules/PIM.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eli9/Desktop/ECE598_Simulation/modules/PIM.cpp -o CMakeFiles/test.dir/modules/PIM.cpp.s

CMakeFiles/test.dir/modules/sensors.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/modules/sensors.cpp.o: ../modules/sensors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/test.dir/modules/sensors.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/modules/sensors.cpp.o -c /home/eli9/Desktop/ECE598_Simulation/modules/sensors.cpp

CMakeFiles/test.dir/modules/sensors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/modules/sensors.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eli9/Desktop/ECE598_Simulation/modules/sensors.cpp > CMakeFiles/test.dir/modules/sensors.cpp.i

CMakeFiles/test.dir/modules/sensors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/modules/sensors.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eli9/Desktop/ECE598_Simulation/modules/sensors.cpp -o CMakeFiles/test.dir/modules/sensors.cpp.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/simulation.cpp.o" \
"CMakeFiles/test.dir/modules/bus_interface.cpp.o" \
"CMakeFiles/test.dir/modules/host_cpu.cpp.o" \
"CMakeFiles/test.dir/modules/PIM.cpp.o" \
"CMakeFiles/test.dir/modules/sensors.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/simulation.cpp.o
test: CMakeFiles/test.dir/modules/bus_interface.cpp.o
test: CMakeFiles/test.dir/modules/host_cpu.cpp.o
test: CMakeFiles/test.dir/modules/PIM.cpp.o
test: CMakeFiles/test.dir/modules/sensors.cpp.o
test: CMakeFiles/test.dir/build.make
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test

.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eli9/Desktop/ECE598_Simulation /home/eli9/Desktop/ECE598_Simulation /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

