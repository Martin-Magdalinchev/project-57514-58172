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
include libwb/CMakeFiles/libwb.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libwb/CMakeFiles/libwb.dir/compiler_depend.make

# Include the progress variables for this target.
include libwb/CMakeFiles/libwb.dir/progress.make

# Include the compile flags for this target's objects.
include libwb/CMakeFiles/libwb.dir/flags.make

libwb/CMakeFiles/libwb.dir/wbArg.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbArg.cpp.o: ../libwb/wbArg.cpp
libwb/CMakeFiles/libwb.dir/wbArg.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libwb/CMakeFiles/libwb.dir/wbArg.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbArg.cpp.o -MF CMakeFiles/libwb.dir/wbArg.cpp.o.d -o CMakeFiles/libwb.dir/wbArg.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbArg.cpp

libwb/CMakeFiles/libwb.dir/wbArg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbArg.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbArg.cpp > CMakeFiles/libwb.dir/wbArg.cpp.i

libwb/CMakeFiles/libwb.dir/wbArg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbArg.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbArg.cpp -o CMakeFiles/libwb.dir/wbArg.cpp.s

libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.o: ../libwb/wbCUDA.cpp
libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.o -MF CMakeFiles/libwb.dir/wbCUDA.cpp.o.d -o CMakeFiles/libwb.dir/wbCUDA.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbCUDA.cpp

libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbCUDA.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbCUDA.cpp > CMakeFiles/libwb.dir/wbCUDA.cpp.i

libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbCUDA.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbCUDA.cpp -o CMakeFiles/libwb.dir/wbCUDA.cpp.s

libwb/CMakeFiles/libwb.dir/wbDataset.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbDataset.cpp.o: ../libwb/wbDataset.cpp
libwb/CMakeFiles/libwb.dir/wbDataset.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object libwb/CMakeFiles/libwb.dir/wbDataset.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbDataset.cpp.o -MF CMakeFiles/libwb.dir/wbDataset.cpp.o.d -o CMakeFiles/libwb.dir/wbDataset.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbDataset.cpp

libwb/CMakeFiles/libwb.dir/wbDataset.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbDataset.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbDataset.cpp > CMakeFiles/libwb.dir/wbDataset.cpp.i

libwb/CMakeFiles/libwb.dir/wbDataset.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbDataset.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbDataset.cpp -o CMakeFiles/libwb.dir/wbDataset.cpp.s

libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.o: ../libwb/wbDirectory.cpp
libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.o -MF CMakeFiles/libwb.dir/wbDirectory.cpp.o.d -o CMakeFiles/libwb.dir/wbDirectory.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbDirectory.cpp

libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbDirectory.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbDirectory.cpp > CMakeFiles/libwb.dir/wbDirectory.cpp.i

libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbDirectory.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbDirectory.cpp -o CMakeFiles/libwb.dir/wbDirectory.cpp.s

libwb/CMakeFiles/libwb.dir/wbExit.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbExit.cpp.o: ../libwb/wbExit.cpp
libwb/CMakeFiles/libwb.dir/wbExit.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object libwb/CMakeFiles/libwb.dir/wbExit.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbExit.cpp.o -MF CMakeFiles/libwb.dir/wbExit.cpp.o.d -o CMakeFiles/libwb.dir/wbExit.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbExit.cpp

libwb/CMakeFiles/libwb.dir/wbExit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbExit.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbExit.cpp > CMakeFiles/libwb.dir/wbExit.cpp.i

libwb/CMakeFiles/libwb.dir/wbExit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbExit.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbExit.cpp -o CMakeFiles/libwb.dir/wbExit.cpp.s

libwb/CMakeFiles/libwb.dir/wbExport.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbExport.cpp.o: ../libwb/wbExport.cpp
libwb/CMakeFiles/libwb.dir/wbExport.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object libwb/CMakeFiles/libwb.dir/wbExport.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbExport.cpp.o -MF CMakeFiles/libwb.dir/wbExport.cpp.o.d -o CMakeFiles/libwb.dir/wbExport.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbExport.cpp

libwb/CMakeFiles/libwb.dir/wbExport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbExport.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbExport.cpp > CMakeFiles/libwb.dir/wbExport.cpp.i

libwb/CMakeFiles/libwb.dir/wbExport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbExport.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbExport.cpp -o CMakeFiles/libwb.dir/wbExport.cpp.s

libwb/CMakeFiles/libwb.dir/wbFile.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbFile.cpp.o: ../libwb/wbFile.cpp
libwb/CMakeFiles/libwb.dir/wbFile.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object libwb/CMakeFiles/libwb.dir/wbFile.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbFile.cpp.o -MF CMakeFiles/libwb.dir/wbFile.cpp.o.d -o CMakeFiles/libwb.dir/wbFile.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbFile.cpp

libwb/CMakeFiles/libwb.dir/wbFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbFile.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbFile.cpp > CMakeFiles/libwb.dir/wbFile.cpp.i

libwb/CMakeFiles/libwb.dir/wbFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbFile.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbFile.cpp -o CMakeFiles/libwb.dir/wbFile.cpp.s

libwb/CMakeFiles/libwb.dir/wbImage.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbImage.cpp.o: ../libwb/wbImage.cpp
libwb/CMakeFiles/libwb.dir/wbImage.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object libwb/CMakeFiles/libwb.dir/wbImage.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbImage.cpp.o -MF CMakeFiles/libwb.dir/wbImage.cpp.o.d -o CMakeFiles/libwb.dir/wbImage.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbImage.cpp

libwb/CMakeFiles/libwb.dir/wbImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbImage.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbImage.cpp > CMakeFiles/libwb.dir/wbImage.cpp.i

libwb/CMakeFiles/libwb.dir/wbImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbImage.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbImage.cpp -o CMakeFiles/libwb.dir/wbImage.cpp.s

libwb/CMakeFiles/libwb.dir/wbImport.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbImport.cpp.o: ../libwb/wbImport.cpp
libwb/CMakeFiles/libwb.dir/wbImport.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object libwb/CMakeFiles/libwb.dir/wbImport.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbImport.cpp.o -MF CMakeFiles/libwb.dir/wbImport.cpp.o.d -o CMakeFiles/libwb.dir/wbImport.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbImport.cpp

libwb/CMakeFiles/libwb.dir/wbImport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbImport.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbImport.cpp > CMakeFiles/libwb.dir/wbImport.cpp.i

libwb/CMakeFiles/libwb.dir/wbImport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbImport.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbImport.cpp -o CMakeFiles/libwb.dir/wbImport.cpp.s

libwb/CMakeFiles/libwb.dir/wbInit.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbInit.cpp.o: ../libwb/wbInit.cpp
libwb/CMakeFiles/libwb.dir/wbInit.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object libwb/CMakeFiles/libwb.dir/wbInit.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbInit.cpp.o -MF CMakeFiles/libwb.dir/wbInit.cpp.o.d -o CMakeFiles/libwb.dir/wbInit.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbInit.cpp

libwb/CMakeFiles/libwb.dir/wbInit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbInit.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbInit.cpp > CMakeFiles/libwb.dir/wbInit.cpp.i

libwb/CMakeFiles/libwb.dir/wbInit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbInit.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbInit.cpp -o CMakeFiles/libwb.dir/wbInit.cpp.s

libwb/CMakeFiles/libwb.dir/wbLogger.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbLogger.cpp.o: ../libwb/wbLogger.cpp
libwb/CMakeFiles/libwb.dir/wbLogger.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object libwb/CMakeFiles/libwb.dir/wbLogger.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbLogger.cpp.o -MF CMakeFiles/libwb.dir/wbLogger.cpp.o.d -o CMakeFiles/libwb.dir/wbLogger.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbLogger.cpp

libwb/CMakeFiles/libwb.dir/wbLogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbLogger.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbLogger.cpp > CMakeFiles/libwb.dir/wbLogger.cpp.i

libwb/CMakeFiles/libwb.dir/wbLogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbLogger.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbLogger.cpp -o CMakeFiles/libwb.dir/wbLogger.cpp.s

libwb/CMakeFiles/libwb.dir/wbMPI.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbMPI.cpp.o: ../libwb/wbMPI.cpp
libwb/CMakeFiles/libwb.dir/wbMPI.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object libwb/CMakeFiles/libwb.dir/wbMPI.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbMPI.cpp.o -MF CMakeFiles/libwb.dir/wbMPI.cpp.o.d -o CMakeFiles/libwb.dir/wbMPI.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbMPI.cpp

libwb/CMakeFiles/libwb.dir/wbMPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbMPI.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbMPI.cpp > CMakeFiles/libwb.dir/wbMPI.cpp.i

libwb/CMakeFiles/libwb.dir/wbMPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbMPI.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbMPI.cpp -o CMakeFiles/libwb.dir/wbMPI.cpp.s

libwb/CMakeFiles/libwb.dir/wbPPM.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbPPM.cpp.o: ../libwb/wbPPM.cpp
libwb/CMakeFiles/libwb.dir/wbPPM.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object libwb/CMakeFiles/libwb.dir/wbPPM.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbPPM.cpp.o -MF CMakeFiles/libwb.dir/wbPPM.cpp.o.d -o CMakeFiles/libwb.dir/wbPPM.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbPPM.cpp

libwb/CMakeFiles/libwb.dir/wbPPM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbPPM.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbPPM.cpp > CMakeFiles/libwb.dir/wbPPM.cpp.i

libwb/CMakeFiles/libwb.dir/wbPPM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbPPM.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbPPM.cpp -o CMakeFiles/libwb.dir/wbPPM.cpp.s

libwb/CMakeFiles/libwb.dir/wbPath.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbPath.cpp.o: ../libwb/wbPath.cpp
libwb/CMakeFiles/libwb.dir/wbPath.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object libwb/CMakeFiles/libwb.dir/wbPath.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbPath.cpp.o -MF CMakeFiles/libwb.dir/wbPath.cpp.o.d -o CMakeFiles/libwb.dir/wbPath.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbPath.cpp

libwb/CMakeFiles/libwb.dir/wbPath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbPath.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbPath.cpp > CMakeFiles/libwb.dir/wbPath.cpp.i

libwb/CMakeFiles/libwb.dir/wbPath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbPath.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbPath.cpp -o CMakeFiles/libwb.dir/wbPath.cpp.s

libwb/CMakeFiles/libwb.dir/wbSolution.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbSolution.cpp.o: ../libwb/wbSolution.cpp
libwb/CMakeFiles/libwb.dir/wbSolution.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object libwb/CMakeFiles/libwb.dir/wbSolution.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbSolution.cpp.o -MF CMakeFiles/libwb.dir/wbSolution.cpp.o.d -o CMakeFiles/libwb.dir/wbSolution.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbSolution.cpp

libwb/CMakeFiles/libwb.dir/wbSolution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbSolution.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbSolution.cpp > CMakeFiles/libwb.dir/wbSolution.cpp.i

libwb/CMakeFiles/libwb.dir/wbSolution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbSolution.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbSolution.cpp -o CMakeFiles/libwb.dir/wbSolution.cpp.s

libwb/CMakeFiles/libwb.dir/wbSparse.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbSparse.cpp.o: ../libwb/wbSparse.cpp
libwb/CMakeFiles/libwb.dir/wbSparse.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object libwb/CMakeFiles/libwb.dir/wbSparse.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbSparse.cpp.o -MF CMakeFiles/libwb.dir/wbSparse.cpp.o.d -o CMakeFiles/libwb.dir/wbSparse.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbSparse.cpp

libwb/CMakeFiles/libwb.dir/wbSparse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbSparse.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbSparse.cpp > CMakeFiles/libwb.dir/wbSparse.cpp.i

libwb/CMakeFiles/libwb.dir/wbSparse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbSparse.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbSparse.cpp -o CMakeFiles/libwb.dir/wbSparse.cpp.s

libwb/CMakeFiles/libwb.dir/wbTimer.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbTimer.cpp.o: ../libwb/wbTimer.cpp
libwb/CMakeFiles/libwb.dir/wbTimer.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object libwb/CMakeFiles/libwb.dir/wbTimer.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbTimer.cpp.o -MF CMakeFiles/libwb.dir/wbTimer.cpp.o.d -o CMakeFiles/libwb.dir/wbTimer.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbTimer.cpp

libwb/CMakeFiles/libwb.dir/wbTimer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbTimer.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbTimer.cpp > CMakeFiles/libwb.dir/wbTimer.cpp.i

libwb/CMakeFiles/libwb.dir/wbTimer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbTimer.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbTimer.cpp -o CMakeFiles/libwb.dir/wbTimer.cpp.s

libwb/CMakeFiles/libwb.dir/wbUtils.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/wbUtils.cpp.o: ../libwb/wbUtils.cpp
libwb/CMakeFiles/libwb.dir/wbUtils.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object libwb/CMakeFiles/libwb.dir/wbUtils.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/wbUtils.cpp.o -MF CMakeFiles/libwb.dir/wbUtils.cpp.o.d -o CMakeFiles/libwb.dir/wbUtils.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/wbUtils.cpp

libwb/CMakeFiles/libwb.dir/wbUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbUtils.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/wbUtils.cpp > CMakeFiles/libwb.dir/wbUtils.cpp.i

libwb/CMakeFiles/libwb.dir/wbUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbUtils.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/wbUtils.cpp -o CMakeFiles/libwb.dir/wbUtils.cpp.s

libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.o: libwb/CMakeFiles/libwb.dir/flags.make
libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.o: ../libwb/vendor/json11.cpp
libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.o: libwb/CMakeFiles/libwb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.o"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.o -MF CMakeFiles/libwb.dir/vendor/json11.cpp.o.d -o CMakeFiles/libwb.dir/vendor/json11.cpp.o -c /home/martin/Documents/CP/project-57514-58172/libwb/vendor/json11.cpp

libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/vendor/json11.cpp.i"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/martin/Documents/CP/project-57514-58172/libwb/vendor/json11.cpp > CMakeFiles/libwb.dir/vendor/json11.cpp.i

libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/vendor/json11.cpp.s"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/martin/Documents/CP/project-57514-58172/libwb/vendor/json11.cpp -o CMakeFiles/libwb.dir/vendor/json11.cpp.s

# Object files for target libwb
libwb_OBJECTS = \
"CMakeFiles/libwb.dir/wbArg.cpp.o" \
"CMakeFiles/libwb.dir/wbCUDA.cpp.o" \
"CMakeFiles/libwb.dir/wbDataset.cpp.o" \
"CMakeFiles/libwb.dir/wbDirectory.cpp.o" \
"CMakeFiles/libwb.dir/wbExit.cpp.o" \
"CMakeFiles/libwb.dir/wbExport.cpp.o" \
"CMakeFiles/libwb.dir/wbFile.cpp.o" \
"CMakeFiles/libwb.dir/wbImage.cpp.o" \
"CMakeFiles/libwb.dir/wbImport.cpp.o" \
"CMakeFiles/libwb.dir/wbInit.cpp.o" \
"CMakeFiles/libwb.dir/wbLogger.cpp.o" \
"CMakeFiles/libwb.dir/wbMPI.cpp.o" \
"CMakeFiles/libwb.dir/wbPPM.cpp.o" \
"CMakeFiles/libwb.dir/wbPath.cpp.o" \
"CMakeFiles/libwb.dir/wbSolution.cpp.o" \
"CMakeFiles/libwb.dir/wbSparse.cpp.o" \
"CMakeFiles/libwb.dir/wbTimer.cpp.o" \
"CMakeFiles/libwb.dir/wbUtils.cpp.o" \
"CMakeFiles/libwb.dir/vendor/json11.cpp.o"

# External object files for target libwb
libwb_EXTERNAL_OBJECTS =

libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbArg.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbCUDA.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbDataset.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbDirectory.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbExit.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbExport.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbFile.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbImage.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbImport.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbInit.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbLogger.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbMPI.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbPPM.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbPath.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbSolution.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbSparse.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbTimer.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/wbUtils.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/vendor/json11.cpp.o
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/build.make
libwb/libwb.so: libwb/CMakeFiles/libwb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/martin/Documents/CP/project-57514-58172/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX shared library libwb.so"
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libwb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libwb/CMakeFiles/libwb.dir/build: libwb/libwb.so
.PHONY : libwb/CMakeFiles/libwb.dir/build

libwb/CMakeFiles/libwb.dir/clean:
	cd /home/martin/Documents/CP/project-57514-58172/build/libwb && $(CMAKE_COMMAND) -P CMakeFiles/libwb.dir/cmake_clean.cmake
.PHONY : libwb/CMakeFiles/libwb.dir/clean

libwb/CMakeFiles/libwb.dir/depend:
	cd /home/martin/Documents/CP/project-57514-58172/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/martin/Documents/CP/project-57514-58172 /home/martin/Documents/CP/project-57514-58172/libwb /home/martin/Documents/CP/project-57514-58172/build /home/martin/Documents/CP/project-57514-58172/build/libwb /home/martin/Documents/CP/project-57514-58172/build/libwb/CMakeFiles/libwb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libwb/CMakeFiles/libwb.dir/depend

