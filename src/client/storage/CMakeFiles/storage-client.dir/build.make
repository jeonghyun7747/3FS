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
include src/client/storage/CMakeFiles/storage-client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/client/storage/CMakeFiles/storage-client.dir/compiler_depend.make

# Include the progress variables for this target.
include src/client/storage/CMakeFiles/storage-client.dir/progress.make

# Include the compile flags for this target's objects.
include src/client/storage/CMakeFiles/storage-client.dir/flags.make

src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.o: src/client/storage/CMakeFiles/storage-client.dir/flags.make
src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.o: src/client/storage/StorageClient.cc
src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.o: src/client/storage/CMakeFiles/storage-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.o"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.o -MF CMakeFiles/storage-client.dir/StorageClient.cc.o.d -o CMakeFiles/storage-client.dir/StorageClient.cc.o -c /home/jhyunlee/3FS/src/client/storage/StorageClient.cc

src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage-client.dir/StorageClient.cc.i"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/storage/StorageClient.cc > CMakeFiles/storage-client.dir/StorageClient.cc.i

src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage-client.dir/StorageClient.cc.s"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/storage/StorageClient.cc -o CMakeFiles/storage-client.dir/StorageClient.cc.s

src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.o: src/client/storage/CMakeFiles/storage-client.dir/flags.make
src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.o: src/client/storage/StorageClientImpl.cc
src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.o: src/client/storage/CMakeFiles/storage-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.o"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.o -MF CMakeFiles/storage-client.dir/StorageClientImpl.cc.o.d -o CMakeFiles/storage-client.dir/StorageClientImpl.cc.o -c /home/jhyunlee/3FS/src/client/storage/StorageClientImpl.cc

src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage-client.dir/StorageClientImpl.cc.i"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/storage/StorageClientImpl.cc > CMakeFiles/storage-client.dir/StorageClientImpl.cc.i

src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage-client.dir/StorageClientImpl.cc.s"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/storage/StorageClientImpl.cc -o CMakeFiles/storage-client.dir/StorageClientImpl.cc.s

src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.o: src/client/storage/CMakeFiles/storage-client.dir/flags.make
src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.o: src/client/storage/StorageClientInMem.cc
src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.o: src/client/storage/CMakeFiles/storage-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.o"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.o -MF CMakeFiles/storage-client.dir/StorageClientInMem.cc.o.d -o CMakeFiles/storage-client.dir/StorageClientInMem.cc.o -c /home/jhyunlee/3FS/src/client/storage/StorageClientInMem.cc

src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage-client.dir/StorageClientInMem.cc.i"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/storage/StorageClientInMem.cc > CMakeFiles/storage-client.dir/StorageClientInMem.cc.i

src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage-client.dir/StorageClientInMem.cc.s"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/storage/StorageClientInMem.cc -o CMakeFiles/storage-client.dir/StorageClientInMem.cc.s

src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.o: src/client/storage/CMakeFiles/storage-client.dir/flags.make
src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.o: src/client/storage/StorageMessenger.cc
src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.o: src/client/storage/CMakeFiles/storage-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.o"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.o -MF CMakeFiles/storage-client.dir/StorageMessenger.cc.o.d -o CMakeFiles/storage-client.dir/StorageMessenger.cc.o -c /home/jhyunlee/3FS/src/client/storage/StorageMessenger.cc

src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage-client.dir/StorageMessenger.cc.i"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/storage/StorageMessenger.cc > CMakeFiles/storage-client.dir/StorageMessenger.cc.i

src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage-client.dir/StorageMessenger.cc.s"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/storage/StorageMessenger.cc -o CMakeFiles/storage-client.dir/StorageMessenger.cc.s

src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.o: src/client/storage/CMakeFiles/storage-client.dir/flags.make
src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.o: src/client/storage/TargetSelection.cc
src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.o: src/client/storage/CMakeFiles/storage-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.o"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.o -MF CMakeFiles/storage-client.dir/TargetSelection.cc.o.d -o CMakeFiles/storage-client.dir/TargetSelection.cc.o -c /home/jhyunlee/3FS/src/client/storage/TargetSelection.cc

src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage-client.dir/TargetSelection.cc.i"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/storage/TargetSelection.cc > CMakeFiles/storage-client.dir/TargetSelection.cc.i

src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage-client.dir/TargetSelection.cc.s"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/storage/TargetSelection.cc -o CMakeFiles/storage-client.dir/TargetSelection.cc.s

src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o: src/client/storage/CMakeFiles/storage-client.dir/flags.make
src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o: src/client/storage/UpdateChannelAllocator.cc
src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o: src/client/storage/CMakeFiles/storage-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o -MF CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o.d -o CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o -c /home/jhyunlee/3FS/src/client/storage/UpdateChannelAllocator.cc

src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.i"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/client/storage/UpdateChannelAllocator.cc > CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.i

src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.s"
	cd /home/jhyunlee/3FS/src/client/storage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/client/storage/UpdateChannelAllocator.cc -o CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.s

# Object files for target storage-client
storage__client_OBJECTS = \
"CMakeFiles/storage-client.dir/StorageClient.cc.o" \
"CMakeFiles/storage-client.dir/StorageClientImpl.cc.o" \
"CMakeFiles/storage-client.dir/StorageClientInMem.cc.o" \
"CMakeFiles/storage-client.dir/StorageMessenger.cc.o" \
"CMakeFiles/storage-client.dir/TargetSelection.cc.o" \
"CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o"

# External object files for target storage-client
storage__client_EXTERNAL_OBJECTS =

src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/StorageClient.cc.o
src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/StorageClientImpl.cc.o
src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/StorageClientInMem.cc.o
src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/StorageMessenger.cc.o
src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/TargetSelection.cc.o
src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/UpdateChannelAllocator.cc.o
src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/build.make
src/client/storage/libstorage-client.a: src/client/storage/CMakeFiles/storage-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libstorage-client.a"
	cd /home/jhyunlee/3FS/src/client/storage && $(CMAKE_COMMAND) -P CMakeFiles/storage-client.dir/cmake_clean_target.cmake
	cd /home/jhyunlee/3FS/src/client/storage && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/storage-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/client/storage/CMakeFiles/storage-client.dir/build: src/client/storage/libstorage-client.a
.PHONY : src/client/storage/CMakeFiles/storage-client.dir/build

src/client/storage/CMakeFiles/storage-client.dir/clean:
	cd /home/jhyunlee/3FS/src/client/storage && $(CMAKE_COMMAND) -P CMakeFiles/storage-client.dir/cmake_clean.cmake
.PHONY : src/client/storage/CMakeFiles/storage-client.dir/clean

src/client/storage/CMakeFiles/storage-client.dir/depend:
	cd /home/jhyunlee/3FS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jhyunlee/3FS /home/jhyunlee/3FS/src/client/storage /home/jhyunlee/3FS /home/jhyunlee/3FS/src/client/storage /home/jhyunlee/3FS/src/client/storage/CMakeFiles/storage-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/client/storage/CMakeFiles/storage-client.dir/depend

