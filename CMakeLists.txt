cmake_minimum_required(VERSION 3.19)
project(ECE598_Simulation)

set(CMAKE_CXX_STANDARD 17)

add_executable(test simulation.cpp modules/bus_interface.h modules/modules.h modules/bus_interface.cpp modules/host_cpu.cpp modules/host_cpu.h modules/PIM.cpp modules/PIM.h modules/sensors.cpp modules/sensors.h modules/utilities.h)
target_link_libraries(test pthread)