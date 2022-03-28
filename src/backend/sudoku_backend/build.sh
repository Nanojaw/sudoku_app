#!/bin/bash

mkdir -p build
(
    cd build
    rm -f CMakeCache.txt
    rm -rf CMakeFiles
    cmake .. $*
    make
)
