# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend

# Include any dependencies generated for this target.
include CMakeFiles/backend_object.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/backend_object.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/backend_object.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/backend_object.dir/flags.make

CMakeFiles/backend_object.dir/backend_wrap.cpp.o: CMakeFiles/backend_object.dir/flags.make
CMakeFiles/backend_object.dir/backend_wrap.cpp.o: backend_wrap.cpp
CMakeFiles/backend_object.dir/backend_wrap.cpp.o: CMakeFiles/backend_object.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/backend_object.dir/backend_wrap.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/backend_object.dir/backend_wrap.cpp.o -MF CMakeFiles/backend_object.dir/backend_wrap.cpp.o.d -o CMakeFiles/backend_object.dir/backend_wrap.cpp.o -c /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/backend_wrap.cpp

CMakeFiles/backend_object.dir/backend_wrap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backend_object.dir/backend_wrap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/backend_wrap.cpp > CMakeFiles/backend_object.dir/backend_wrap.cpp.i

CMakeFiles/backend_object.dir/backend_wrap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backend_object.dir/backend_wrap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/backend_wrap.cpp -o CMakeFiles/backend_object.dir/backend_wrap.cpp.s

CMakeFiles/backend_object.dir/backend.cpp.o: CMakeFiles/backend_object.dir/flags.make
CMakeFiles/backend_object.dir/backend.cpp.o: backend.cpp
CMakeFiles/backend_object.dir/backend.cpp.o: CMakeFiles/backend_object.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/backend_object.dir/backend.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/backend_object.dir/backend.cpp.o -MF CMakeFiles/backend_object.dir/backend.cpp.o.d -o CMakeFiles/backend_object.dir/backend.cpp.o -c /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/backend.cpp

CMakeFiles/backend_object.dir/backend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backend_object.dir/backend.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/backend.cpp > CMakeFiles/backend_object.dir/backend.cpp.i

CMakeFiles/backend_object.dir/backend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backend_object.dir/backend.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/backend.cpp -o CMakeFiles/backend_object.dir/backend.cpp.s

backend_object: CMakeFiles/backend_object.dir/backend_wrap.cpp.o
backend_object: CMakeFiles/backend_object.dir/backend.cpp.o
backend_object: CMakeFiles/backend_object.dir/build.make
.PHONY : backend_object

# Rule to build all files generated by this target.
CMakeFiles/backend_object.dir/build: backend_object
.PHONY : CMakeFiles/backend_object.dir/build

CMakeFiles/backend_object.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/backend_object.dir/cmake_clean.cmake
.PHONY : CMakeFiles/backend_object.dir/clean

CMakeFiles/backend_object.dir/depend:
	cd /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend /home/teststuffv20/GitReps/sudoku_app/src/backend/sudoku_backend/CMakeFiles/backend_object.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/backend_object.dir/depend

