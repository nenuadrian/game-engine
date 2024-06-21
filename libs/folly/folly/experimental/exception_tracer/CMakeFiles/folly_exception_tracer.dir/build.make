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
include libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/compiler_depend.make

# Include the progress variables for this target.
include libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/progress.make

# Include the compile flags for this target's objects.
include libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/flags.make

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/flags.make
libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o: libs/folly/folly/experimental/exception_tracer/ExceptionStackTraceLib.cpp
libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o"
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o -MF CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o.d -o CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o -c /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionStackTraceLib.cpp

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.i"
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionStackTraceLib.cpp > CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.i

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.s"
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionStackTraceLib.cpp -o CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.s

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/flags.make
libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o: libs/folly/folly/experimental/exception_tracer/ExceptionTracerLib.cpp
libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o"
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o -MF CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o.d -o CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o -c /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionTracerLib.cpp

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.i"
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionTracerLib.cpp > CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.i

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.s"
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/ExceptionTracerLib.cpp -o CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.s

# Object files for target folly_exception_tracer
folly_exception_tracer_OBJECTS = \
"CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o" \
"CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o"

# External object files for target folly_exception_tracer
folly_exception_tracer_EXTERNAL_OBJECTS =

libs/folly/folly/experimental/exception_tracer/libfolly_exception_tracer.a: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionStackTraceLib.cpp.o
libs/folly/folly/experimental/exception_tracer/libfolly_exception_tracer.a: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/ExceptionTracerLib.cpp.o
libs/folly/folly/experimental/exception_tracer/libfolly_exception_tracer.a: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/build.make
libs/folly/folly/experimental/exception_tracer/libfolly_exception_tracer.a: libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nenuadrian/game-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libfolly_exception_tracer.a"
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && $(CMAKE_COMMAND) -P CMakeFiles/folly_exception_tracer.dir/cmake_clean_target.cmake
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/folly_exception_tracer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/build: libs/folly/folly/experimental/exception_tracer/libfolly_exception_tracer.a
.PHONY : libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/build

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/clean:
	cd /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer && $(CMAKE_COMMAND) -P CMakeFiles/folly_exception_tracer.dir/cmake_clean.cmake
.PHONY : libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/clean

libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/depend:
	cd /home/nenuadrian/game-engine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer /home/nenuadrian/game-engine /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer /home/nenuadrian/game-engine/libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libs/folly/folly/experimental/exception_tracer/CMakeFiles/folly_exception_tracer.dir/depend

