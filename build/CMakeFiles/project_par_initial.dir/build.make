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
CMAKE_SOURCE_DIR = /home/martin/Documents/CP/project-57514-58172

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/martin/Documents/CP/project-57514-58172/build

# Include any dependencies generated for this target.
include CMakeFiles/project_par_initial.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/project_par_initial.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/project_par_initial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project_par_initial.dir/flags.make

CMakeFiles/project_par_initial.dir/src/main.cpp.o: CMakeFiles/project_par_initial.dir/flags.make
CMakeFiles/project_par_initial.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/project_par_initial.dir/src/main.cpp.o: CMakeFiles/project_par_initial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project_par_initial.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/project_par_initial.dir/src/main.cpp.o -MF CMakeFiles/project_par_initial.dir/src/main.cpp.o.d -o CMakeFiles/project_par_initial.dir/src/main.cpp.o -c /home/martin/Documents/CP/project-57514-58172/src/main.cpp

CMakeFiles/project_par_initial.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project_par_initial.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/src/main.cpp > CMakeFiles/project_par_initial.dir/src/main.cpp.i

CMakeFiles/project_par_initial.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project_par_initial.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/src/main.cpp -o CMakeFiles/project_par_initial.dir/src/main.cpp.s

CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o: CMakeFiles/project_par_initial.dir/flags.make
CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o: ../src/histogram_par_initial.cpp
CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o: CMakeFiles/project_par_initial.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o -MF CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o.d -o CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o -c /home/martin/Documents/CP/project-57514-58172/src/histogram_par_initial.cpp

CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/src/histogram_par_initial.cpp > CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.i

CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/src/histogram_par_initial.cpp -o CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.s

# Object files for target project_par_initial
project_par_initial_OBJECTS = \
"CMakeFiles/project_par_initial.dir/src/main.cpp.o" \
"CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o"

# External object files for target project_par_initial
project_par_initial_EXTERNAL_OBJECTS =

project_par_initial: CMakeFiles/project_par_initial.dir/src/main.cpp.o
project_par_initial: CMakeFiles/project_par_initial.dir/src/histogram_par_initial.cpp.o
project_par_initial: CMakeFiles/project_par_initial.dir/build.make
project_par_initial: libwb/libwb.a
project_par_initial: /usr/lib/gcc/x86_64-linux-gnu/11/libgomp.so
project_par_initial: /usr/lib/x86_64-linux-gnu/libpthread.a
project_par_initial: CMakeFiles/project_par_initial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable project_par_initial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project_par_initial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project_par_initial.dir/build: project_par_initial
.PHONY : CMakeFiles/project_par_initial.dir/build

CMakeFiles/project_par_initial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project_par_initial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project_par_initial.dir/clean

CMakeFiles/project_par_initial.dir/depend:
	cd /home/martin/Documents/CP/project-57514-58172/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/martin/Documents/CP/project-57514-58172 /home/martin/Documents/CP/project-57514-58172 /home/martin/Documents/CP/project-57514-58172/build /home/martin/Documents/CP/project-57514-58172/build /home/martin/Documents/CP/project-57514-58172/build/CMakeFiles/project_par_initial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/project_par_initial.dir/depend

