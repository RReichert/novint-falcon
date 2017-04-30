cmake_minimum_required(VERSION 3.2)

project(falcon)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

set(CMAKE_C_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS "-Wall")

include(cmake/prefix_path.cmake)

add_subdirectory(src)