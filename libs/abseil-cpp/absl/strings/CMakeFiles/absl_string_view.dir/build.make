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
include libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/compiler_depend.make

# Include the progress variables for this target.
include libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/progress.make

# Include the compile flags for this target's objects.
include libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/flags.make

libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.o: libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/flags.make
libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.o: libs/abseil-cpp/absl/strings/string_view.cc
libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.o: libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.o"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.o -MF CMakeFiles/absl_string_view.dir/string_view.cc.o.d -o CMakeFiles/absl_string_view.dir/string_view.cc.o -c /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings/string_view.cc

libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/absl_string_view.dir/string_view.cc.i"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings/string_view.cc > CMakeFiles/absl_string_view.dir/string_view.cc.i

libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/absl_string_view.dir/string_view.cc.s"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings/string_view.cc -o CMakeFiles/absl_string_view.dir/string_view.cc.s

# Object files for target absl_string_view
absl_string_view_OBJECTS = \
"CMakeFiles/absl_string_view.dir/string_view.cc.o"

# External object files for target absl_string_view
absl_string_view_EXTERNAL_OBJECTS =

libs/abseil-cpp/absl/strings/libabsl_string_view.a: libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/string_view.cc.o
libs/abseil-cpp/absl/strings/libabsl_string_view.a: libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/build.make
libs/abseil-cpp/absl/strings/libabsl_string_view.a: libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libabsl_string_view.a"
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings && $(CMAKE_COMMAND) -P CMakeFiles/absl_string_view.dir/cmake_clean_target.cmake
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/absl_string_view.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/build: libs/abseil-cpp/absl/strings/libabsl_string_view.a
.PHONY : libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/build

libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/clean:
	cd /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings && $(CMAKE_COMMAND) -P CMakeFiles/absl_string_view.dir/cmake_clean.cmake
.PHONY : libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/clean

libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/depend:
	cd /home/nenuadrian/game-engine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings /home/nenuadrian/game-engine/libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/abseil-cpp/absl/strings/CMakeFiles/absl_string_view.dir/depend

