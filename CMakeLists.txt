cmake_minimum_required(VERSION 3.7)

project(novint_falcon)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)

set(CMAKE_C_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS "-Wall")

add_subdirectory(src)