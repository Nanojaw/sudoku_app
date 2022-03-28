cmake_minimum_required(VERSION 3.5)
project(backend VERSION 1.0)
set(CMAKE_CXX_STANDARD 20)

add_library(backend SHARED backend_wrap.cpp backend.cpp)

target_include_directories(backend PUBLIC $ENV(JAVA_HOME)/include)