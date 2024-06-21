# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/nenuadrian/game-engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nenuadrian/game-engine

# Include any dependencies generated for this target.
include libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/compiler_depend.make

# Include the progress variables for this target.
include libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/progress.make

# Include the compile flags for this target's objects.
include libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/flags.make

libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.o: libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/flags.make
libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.o: libs/abseil-cpp/absl/status/statusor.cc
libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.o: libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.o"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.o -MF CMakeFiles/absl_statusor.dir/statusor.cc.o.d -o CMakeFiles/absl_statusor.dir/statusor.cc.o -c /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status/statusor.cc

libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/absl_statusor.dir/statusor.cc.i"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status/statusor.cc > CMakeFiles/absl_statusor.dir/statusor.cc.i

libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/absl_statusor.dir/statusor.cc.s"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status/statusor.cc -o CMakeFiles/absl_statusor.dir/statusor.cc.s

# Object files for target absl_statusor
absl_statusor_OBJECTS = \
"CMakeFiles/absl_statusor.dir/statusor.cc.o"

# External object files for target absl_statusor
absl_statusor_EXTERNAL_OBJECTS =

libs/abseil-cpp/absl/status/libabsl_statusor.a: libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/statusor.cc.o
libs/abseil-cpp/absl/status/libabsl_statusor.a: libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/build.make
libs/abseil-cpp/absl/status/libabsl_statusor.a: libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libabsl_statusor.a"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status && $(CMAKE_COMMAND) -P CMakeFiles/absl_statusor.dir/cmake_clean_target.cmake
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absl_statusor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/build: libs/abseil-cpp/absl/status/libabsl_statusor.a
.PHONY : libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/build

libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/clean:
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status && $(CMAKE_COMMAND) -P CMakeFiles/absl_statusor.dir/cmake_clean.cmake
.PHONY : libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/clean

libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/depend:
	cd /home/nenuadrian/game-engine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status /home/nenuadrian/game-engine/libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/abseil-cpp/absl/status/CMakeFiles/absl_statusor.dir/depend
