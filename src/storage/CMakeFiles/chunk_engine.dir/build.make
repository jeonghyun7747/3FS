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
CMAKE_SOURCE_DIR = /home/jhyunlee/3FS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jhyunlee/3FS

# Include any dependencies generated for this target.
include src/storage/CMakeFiles/chunk_engine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/storage/CMakeFiles/chunk_engine.dir/compiler_depend.make

# Include the progress variables for this target.
include src/storage/CMakeFiles/chunk_engine.dir/progress.make

# Include the compile flags for this target's objects.
include src/storage/CMakeFiles/chunk_engine.dir/flags.make

target/cxxbridge/chunk_engine/src/cxx.rs.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../target/cxxbridge/chunk_engine/src/cxx.rs.h, ../../target/cxxbridge/chunk_engine/src/cxx.rs.cc, ../../target/release/libchunk_engine.a"
	cd /home/jhyunlee/3FS/src/storage/chunk_engine && cargo build --release

target/cxxbridge/chunk_engine/src/cxx.rs.cc: target/cxxbridge/chunk_engine/src/cxx.rs.h
	@$(CMAKE_COMMAND) -E touch_nocreate target/cxxbridge/chunk_engine/src/cxx.rs.cc

target/release/libchunk_engine.a: target/cxxbridge/chunk_engine/src/cxx.rs.h
	@$(CMAKE_COMMAND) -E touch_nocreate target/release/libchunk_engine.a

src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o: src/storage/CMakeFiles/chunk_engine.dir/flags.make
src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o: target/cxxbridge/chunk_engine/src/cxx.rs.cc
src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o: src/storage/CMakeFiles/chunk_engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o"
	cd /home/jhyunlee/3FS/src/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o -MF CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o.d -o CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o -c /home/jhyunlee/3FS/target/cxxbridge/chunk_engine/src/cxx.rs.cc

src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.i"
	cd /home/jhyunlee/3FS/src/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/target/cxxbridge/chunk_engine/src/cxx.rs.cc > CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.i

src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.s"
	cd /home/jhyunlee/3FS/src/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/target/cxxbridge/chunk_engine/src/cxx.rs.cc -o CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.s

# Object files for target chunk_engine
chunk_engine_OBJECTS = \
"CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o"

# External object files for target chunk_engine
chunk_engine_EXTERNAL_OBJECTS =

src/storage/libchunk_engine.a: src/storage/CMakeFiles/chunk_engine.dir/__/__/target/cxxbridge/chunk_engine/src/cxx.rs.cc.o
src/storage/libchunk_engine.a: src/storage/CMakeFiles/chunk_engine.dir/build.make
src/storage/libchunk_engine.a: src/storage/CMakeFiles/chunk_engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libchunk_engine.a"
	cd /home/jhyunlee/3FS/src/storage && $(CMAKE_COMMAND) -P CMakeFiles/chunk_engine.dir/cmake_clean_target.cmake
	cd /home/jhyunlee/3FS/src/storage && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chunk_engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/storage/CMakeFiles/chunk_engine.dir/build: src/storage/libchunk_engine.a
.PHONY : src/storage/CMakeFiles/chunk_engine.dir/build

src/storage/CMakeFiles/chunk_engine.dir/clean:
	cd /home/jhyunlee/3FS/src/storage && $(CMAKE_COMMAND) -P CMakeFiles/chunk_engine.dir/cmake_clean.cmake
.PHONY : src/storage/CMakeFiles/chunk_engine.dir/clean

src/storage/CMakeFiles/chunk_engine.dir/depend: target/cxxbridge/chunk_engine/src/cxx.rs.cc
src/storage/CMakeFiles/chunk_engine.dir/depend: target/cxxbridge/chunk_engine/src/cxx.rs.h
src/storage/CMakeFiles/chunk_engine.dir/depend: target/release/libchunk_engine.a
	cd /home/jhyunlee/3FS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jhyunlee/3FS /home/jhyunlee/3FS/src/storage /home/jhyunlee/3FS /home/jhyunlee/3FS/src/storage /home/jhyunlee/3FS/src/storage/CMakeFiles/chunk_engine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/storage/CMakeFiles/chunk_engine.dir/depend

