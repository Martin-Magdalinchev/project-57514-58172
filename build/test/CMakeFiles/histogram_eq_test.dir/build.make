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
CMAKE_SOURCE_DIR = /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build

# Include any dependencies generated for this target.
include test/CMakeFiles/histogram_eq_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/histogram_eq_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/histogram_eq_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/histogram_eq_test.dir/flags.make

test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o: test/CMakeFiles/histogram_eq_test.dir/flags.make
test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o: ../test/histogram_eq_test.cpp
test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o: test/CMakeFiles/histogram_eq_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o"
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o -MF CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o.d -o CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o -c /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/test/histogram_eq_test.cpp

test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.i"
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/test/histogram_eq_test.cpp > CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.i

test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.s"
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/test/histogram_eq_test.cpp -o CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.s

test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o: test/CMakeFiles/histogram_eq_test.dir/flags.make
test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o: ../src/histogram_eq.cpp
test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o: test/CMakeFiles/histogram_eq_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o"
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o -MF CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o.d -o CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o -c /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/src/histogram_eq.cpp

test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.i"
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/src/histogram_eq.cpp > CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.i

test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.s"
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/src/histogram_eq.cpp -o CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.s

# Object files for target histogram_eq_test
histogram_eq_test_OBJECTS = \
"CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o" \
"CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o"

# External object files for target histogram_eq_test
histogram_eq_test_EXTERNAL_OBJECTS =

test/histogram_eq_test: test/CMakeFiles/histogram_eq_test.dir/histogram_eq_test.cpp.o
test/histogram_eq_test: test/CMakeFiles/histogram_eq_test.dir/__/src/histogram_eq.cpp.o
test/histogram_eq_test: test/CMakeFiles/histogram_eq_test.dir/build.make
test/histogram_eq_test: lib/libgtest_main.a
test/histogram_eq_test: lib/libgtest.a
test/histogram_eq_test: libwb/libwb.a
test/histogram_eq_test: test/CMakeFiles/histogram_eq_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable histogram_eq_test"
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/histogram_eq_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/histogram_eq_test.dir/build: test/histogram_eq_test
.PHONY : test/CMakeFiles/histogram_eq_test.dir/build

test/CMakeFiles/histogram_eq_test.dir/clean:
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test && $(CMAKE_COMMAND) -P CMakeFiles/histogram_eq_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/histogram_eq_test.dir/clean

test/CMakeFiles/histogram_eq_test.dir/depend:
	cd /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172 /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/test /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test /mnt/c/Users/pmtbl/Desktop/CP/project-57514-58172/build/test/CMakeFiles/histogram_eq_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/histogram_eq_test.dir/depend
