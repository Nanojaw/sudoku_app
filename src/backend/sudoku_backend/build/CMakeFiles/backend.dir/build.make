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
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build

# Include any dependencies generated for this target.
include CMakeFiles/backend.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/backend.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/backend.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/backend.dir/flags.make

CMakeFiles/backend.dir/backend_wrap.cpp.o: CMakeFiles/backend.dir/flags.make
CMakeFiles/backend.dir/backend_wrap.cpp.o: ../backend_wrap.cpp
CMakeFiles/backend.dir/backend_wrap.cpp.o: CMakeFiles/backend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/backend.dir/backend_wrap.cpp.o"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/backend.dir/backend_wrap.cpp.o -MF CMakeFiles/backend.dir/backend_wrap.cpp.o.d -o CMakeFiles/backend.dir/backend_wrap.cpp.o -c /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/backend_wrap.cpp

CMakeFiles/backend.dir/backend_wrap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backend.dir/backend_wrap.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/backend_wrap.cpp > CMakeFiles/backend.dir/backend_wrap.cpp.i

CMakeFiles/backend.dir/backend_wrap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backend.dir/backend_wrap.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/backend_wrap.cpp -o CMakeFiles/backend.dir/backend_wrap.cpp.s

CMakeFiles/backend.dir/backend.cpp.o: CMakeFiles/backend.dir/flags.make
CMakeFiles/backend.dir/backend.cpp.o: ../backend.cpp
CMakeFiles/backend.dir/backend.cpp.o: CMakeFiles/backend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/backend.dir/backend.cpp.o"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/backend.dir/backend.cpp.o -MF CMakeFiles/backend.dir/backend.cpp.o.d -o CMakeFiles/backend.dir/backend.cpp.o -c /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/backend.cpp

CMakeFiles/backend.dir/backend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backend.dir/backend.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/backend.cpp > CMakeFiles/backend.dir/backend.cpp.i

CMakeFiles/backend.dir/backend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backend.dir/backend.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/backend.cpp -o CMakeFiles/backend.dir/backend.cpp.s

# Object files for target backend
backend_OBJECTS = \
"CMakeFiles/backend.dir/backend_wrap.cpp.o" \
"CMakeFiles/backend.dir/backend.cpp.o"

# External object files for target backend
backend_EXTERNAL_OBJECTS =

msys-backend.dll: CMakeFiles/backend.dir/backend_wrap.cpp.o
msys-backend.dll: CMakeFiles/backend.dir/backend.cpp.o
msys-backend.dll: CMakeFiles/backend.dir/build.make
msys-backend.dll: CMakeFiles/backend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library msys-backend.dll"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/backend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/backend.dir/build: msys-backend.dll
.PHONY : CMakeFiles/backend.dir/build

CMakeFiles/backend.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/backend.dir/cmake_clean.cmake
.PHONY : CMakeFiles/backend.dir/clean

CMakeFiles/backend.dir/depend:
	cd /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build /c/Users/test9/Documents/GitHub/sudoku_app/src/backend/sudoku_backend/build/CMakeFiles/backend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/backend.dir/depend
