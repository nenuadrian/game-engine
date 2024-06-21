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
include libs/folly/folly/CMakeFiles/follybenchmark.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libs/folly/folly/CMakeFiles/follybenchmark.dir/compiler_depend.make

# Include the progress variables for this target.
include libs/folly/folly/CMakeFiles/follybenchmark.dir/progress.make

# Include the compile flags for this target's objects.
include libs/folly/folly/CMakeFiles/follybenchmark.dir/flags.make

libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.o: libs/folly/folly/CMakeFiles/follybenchmark.dir/flags.make
libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.o: libs/folly/folly/Benchmark.cpp
libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.o: libs/folly/folly/CMakeFiles/follybenchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.o"
	cd /home/nenuadrian/game-engine/libs/folly/folly && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.o -MF CMakeFiles/follybenchmark.dir/Benchmark.cpp.o.d -o CMakeFiles/follybenchmark.dir/Benchmark.cpp.o -c /home/nenuadrian/game-engine/libs/folly/folly/Benchmark.cpp

libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/follybenchmark.dir/Benchmark.cpp.i"
	cd /home/nenuadrian/game-engine/libs/folly/folly && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nenuadrian/game-engine/libs/folly/folly/Benchmark.cpp > CMakeFiles/follybenchmark.dir/Benchmark.cpp.i

libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/follybenchmark.dir/Benchmark.cpp.s"
	cd /home/nenuadrian/game-engine/libs/folly/folly && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nenuadrian/game-engine/libs/folly/folly/Benchmark.cpp -o CMakeFiles/follybenchmark.dir/Benchmark.cpp.s

# Object files for target follybenchmark
follybenchmark_OBJECTS = \
"CMakeFiles/follybenchmark.dir/Benchmark.cpp.o"

# External object files for target follybenchmark
follybenchmark_EXTERNAL_OBJECTS =

libs/folly/folly/libfollybenchmark.a: libs/folly/folly/CMakeFiles/follybenchmark.dir/Benchmark.cpp.o
libs/folly/folly/libfollybenchmark.a: libs/folly/folly/CMakeFiles/follybenchmark.dir/build.make
libs/folly/folly/libfollybenchmark.a: libs/folly/folly/CMakeFiles/follybenchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libfollybenchmark.a"
	cd /home/nenuadrian/game-engine/libs/folly/folly && $(CMAKE_COMMAND) -P CMakeFiles/follybenchmark.dir/cmake_clean_target.cmake
	cd /home/nenuadrian/game-engine/libs/folly/folly && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/follybenchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/folly/folly/CMakeFiles/follybenchmark.dir/build: libs/folly/folly/libfollybenchmark.a
.PHONY : libs/folly/folly/CMakeFiles/follybenchmark.dir/build

libs/folly/folly/CMakeFiles/follybenchmark.dir/clean:
	cd /home/nenuadrian/game-engine/libs/folly/folly && $(CMAKE_COMMAND) -P CMakeFiles/follybenchmark.dir/cmake_clean.cmake
.PHONY : libs/folly/folly/CMakeFiles/follybenchmark.dir/clean

libs/folly/folly/CMakeFiles/follybenchmark.dir/depend:
	cd /home/nenuadrian/game-engine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/folly/folly /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/folly/folly /home/nenuadrian/game-engine/libs/folly/folly/CMakeFiles/follybenchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/folly/folly/CMakeFiles/follybenchmark.dir/depend
