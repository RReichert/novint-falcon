project(novint_falcon)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Boost REQUIRED)
find_package(Qt5Core REQUIRED)

set(SOURCE_FILES falcon.cpp)

add_executable(falcon ${SOURCE_FILES})

target_link_libraries(falcon ${Boost_LIBRARIES})
target_include_directories(falcon PUBLIC ${Boost_INCLUDE_DIR})

target_link_libraries(falcon Qt5::Core)