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
include src/client/meta/CMakeFiles/meta-client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/client/meta/CMakeFiles/meta-client.dir/compiler_depend.make

# Include the progress variables for this target.
include src/client/meta/CMakeFiles/meta-client.dir/progress.make

# Include the compile flags for this target's objects.
include src/client/meta/CMakeFiles/meta-client.dir/flags.make

src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.o: src/client/meta/CMakeFiles/meta-client.dir/flags.make
src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.o: src/client/meta/MetaClient.cc
src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.o: src/client/meta/CMakeFiles/meta-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.o"
	cd /home/jhyunlee/3FS/src/client/meta && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.o -MF CMakeFiles/meta-client.dir/MetaClient.cc.o.d -o CMakeFiles/meta-client.dir/MetaClient.cc.o -c /home/jhyunlee/3FS/src/client/meta/MetaClient.cc

src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/meta-client.dir/MetaClient.cc.i"
	cd /home/jhyunlee/3FS/src/client/meta && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/meta/MetaClient.cc > CMakeFiles/meta-client.dir/MetaClient.cc.i

src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/meta-client.dir/MetaClient.cc.s"
	cd /home/jhyunlee/3FS/src/client/meta && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/meta/MetaClient.cc -o CMakeFiles/meta-client.dir/MetaClient.cc.s

src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o: src/client/meta/CMakeFiles/meta-client.dir/flags.make
src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o: src/client/meta/ServerSelectionStrategy.cc
src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o: src/client/meta/CMakeFiles/meta-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o"
	cd /home/jhyunlee/3FS/src/client/meta && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o -MF CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o.d -o CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o -c /home/jhyunlee/3FS/src/client/meta/ServerSelectionStrategy.cc

src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.i"
	cd /home/jhyunlee/3FS/src/client/meta && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/meta/ServerSelectionStrategy.cc > CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.i

src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.s"
	cd /home/jhyunlee/3FS/src/client/meta && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/meta/ServerSelectionStrategy.cc -o CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.s

# Object files for target meta-client
meta__client_OBJECTS = \
"CMakeFiles/meta-client.dir/MetaClient.cc.o" \
"CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o"

# External object files for target meta-client
meta__client_EXTERNAL_OBJECTS =

src/client/meta/libmeta-client.a: src/client/meta/CMakeFiles/meta-client.dir/MetaClient.cc.o
src/client/meta/libmeta-client.a: src/client/meta/CMakeFiles/meta-client.dir/ServerSelectionStrategy.cc.o
src/client/meta/libmeta-client.a: src/client/meta/CMakeFiles/meta-client.dir/build.make
src/client/meta/libmeta-client.a: src/client/meta/CMakeFiles/meta-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libmeta-client.a"
	cd /home/jhyunlee/3FS/src/client/meta && $(CMAKE_COMMAND) -P CMakeFiles/meta-client.dir/cmake_clean_target.cmake
	cd /home/jhyunlee/3FS/src/client/meta && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/meta-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/client/meta/CMakeFiles/meta-client.dir/build: src/client/meta/libmeta-client.a
.PHONY : src/client/meta/CMakeFiles/meta-client.dir/build

src/client/meta/CMakeFiles/meta-client.dir/clean:
	cd /home/jhyunlee/3FS/src/client/meta && $(CMAKE_COMMAND) -P CMakeFiles/meta-client.dir/cmake_clean.cmake
.PHONY : src/client/meta/CMakeFiles/meta-client.dir/clean

src/client/meta/CMakeFiles/meta-client.dir/depend:
	cd /home/jhyunlee/3FS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jhyunlee/3FS /home/jhyunlee/3FS/src/client/meta /home/jhyunlee/3FS /home/jhyunlee/3FS/src/client/meta /home/jhyunlee/3FS/src/client/meta/CMakeFiles/meta-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/client/meta/CMakeFiles/meta-client.dir/depend

