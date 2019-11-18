cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(POINT_CLOUD)
find_package(PCL 1.3 REQUIRED COMPONENTS common io filters)
include_directories(${PCL_INCLUDE_DIRS})
link_libraries(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONs})
add_executable(main src/main.cpp)
target_link_libraries(main ${PCL_COMMON_LIBRARIES} ${PCL_IO_LIBRARIES} ${PCL_FILTERS_LIBRARIES})
