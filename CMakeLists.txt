cmake_minimum_required(VERSION 3.12)
project(hellocmake LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE Debug)

# for backward-cpp
add_subdirectory(backward-cpp)
add_executable(main main.cpp ${BACKWARD_ENABLE})
add_backward(main)

# add_custom_target(run COMMAND $<TARGET_FILE:main>)

if(NOT DEFINED DEBUG)
  set(DEBUG OFF)
endif()

message(STATUS "DEBUG: ${DEBUG}")

if(DEBUG)
  target_compile_definitions(main PUBLIC DEBUG)
endif()
