cmake_minimum_required(VERSION 3.5)
project(sudoku_backend)
set(CMAKE_CXX_STANDARD 14)

find_package(JNI REQUIRED)
include_directories(${JNI_INCLUDE_DIRS})

# a gcc-linkable library of backend
add_library(backend_object OBJECT backend_wrap.cpp backend.cpp)

target_link_libraries(backend_object libtdoku_static.a)

add_library(backend_static STATIC $<TARGET_OBJECTS:backend_object>)
add_library(backend_shared SHARED $<TARGET_OBJECTS:backend_object>)