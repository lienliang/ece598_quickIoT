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
include CMakeFiles/ECE598_Simulation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ECE598_Simulation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ECE598_Simulation.dir/flags.make

CMakeFiles/ECE598_Simulation.dir/main.cpp.o: CMakeFiles/ECE598_Simulation.dir/flags.make
CMakeFiles/ECE598_Simulation.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ECE598_Simulation.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ECE598_Simulation.dir/main.cpp.o -c /home/eli9/Desktop/ECE598_Simulation/main.cpp

CMakeFiles/ECE598_Simulation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ECE598_Simulation.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eli9/Desktop/ECE598_Simulation/main.cpp > CMakeFiles/ECE598_Simulation.dir/main.cpp.i

CMakeFiles/ECE598_Simulation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ECE598_Simulation.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eli9/Desktop/ECE598_Simulation/main.cpp -o CMakeFiles/ECE598_Simulation.dir/main.cpp.s

# Object files for target ECE598_Simulation
ECE598_Simulation_OBJECTS = \
"CMakeFiles/ECE598_Simulation.dir/main.cpp.o"

# External object files for target ECE598_Simulation
ECE598_Simulation_EXTERNAL_OBJECTS =

ECE598_Simulation: CMakeFiles/ECE598_Simulation.dir/main.cpp.o
ECE598_Simulation: CMakeFiles/ECE598_Simulation.dir/build.make
ECE598_Simulation: CMakeFiles/ECE598_Simulation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ECE598_Simulation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ECE598_Simulation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ECE598_Simulation.dir/build: ECE598_Simulation

.PHONY : CMakeFiles/ECE598_Simulation.dir/build

CMakeFiles/ECE598_Simulation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ECE598_Simulation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ECE598_Simulation.dir/clean

CMakeFiles/ECE598_Simulation.dir/depend:
	cd /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eli9/Desktop/ECE598_Simulation /home/eli9/Desktop/ECE598_Simulation /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug /home/eli9/Desktop/ECE598_Simulation/cmake-build-debug/CMakeFiles/ECE598_Simulation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ECE598_Simulation.dir/depend
