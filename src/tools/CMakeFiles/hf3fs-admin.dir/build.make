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
include src/tools/CMakeFiles/hf3fs-admin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/tools/CMakeFiles/hf3fs-admin.dir/compiler_depend.make

# Include the progress variables for this target.
include src/tools/CMakeFiles/hf3fs-admin.dir/progress.make

# Include the compile flags for this target's objects.
include src/tools/CMakeFiles/hf3fs-admin.dir/flags.make

src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.o: src/tools/CMakeFiles/hf3fs-admin.dir/flags.make
src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.o: src/tools/admin.cc
src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.o: src/tools/CMakeFiles/hf3fs-admin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.o"
	cd /home/jhyunlee/3FS/src/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.o -MF CMakeFiles/hf3fs-admin.dir/admin.cc.o.d -o CMakeFiles/hf3fs-admin.dir/admin.cc.o -c /home/jhyunlee/3FS/src/tools/admin.cc

src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hf3fs-admin.dir/admin.cc.i"
	cd /home/jhyunlee/3FS/src/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jhyunlee/3FS/src/tools/admin.cc > CMakeFiles/hf3fs-admin.dir/admin.cc.i

src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hf3fs-admin.dir/admin.cc.s"
	cd /home/jhyunlee/3FS/src/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jhyunlee/3FS/src/tools/admin.cc -o CMakeFiles/hf3fs-admin.dir/admin.cc.s

# Object files for target hf3fs-admin
hf3fs__admin_OBJECTS = \
"CMakeFiles/hf3fs-admin.dir/admin.cc.o"

# External object files for target hf3fs-admin
hf3fs__admin_EXTERNAL_OBJECTS =

bin/hf3fs-admin: src/tools/CMakeFiles/hf3fs-admin.dir/admin.cc.o
bin/hf3fs-admin: src/tools/CMakeFiles/hf3fs-admin.dir/build.make
bin/hf3fs-admin: src/tools/commands/libadmin-commands.a
bin/hf3fs-admin: src/client/meta/libmeta-client.a
bin/hf3fs-admin: src/stubs/MetaService/libmeta-stub.a
bin/hf3fs-admin: src/client/mgmtd/libmgmtd-client.a
bin/hf3fs-admin: src/client/storage/libstorage-client.a
bin/hf3fs-admin: src/stubs/mgmtd/libmgmtd-stub.a
bin/hf3fs-admin: src/stubs/common/libstubs-common.a
bin/hf3fs-admin: src/fbs/meta/libmeta-fbs.a
bin/hf3fs-admin: src/fbs/storage/libstorage-fbs.a
bin/hf3fs-admin: src/client/mgmtd/libmgmtd-client.a
bin/hf3fs-admin: src/client/storage/libstorage-client.a
bin/hf3fs-admin: src/stubs/mgmtd/libmgmtd-stub.a
bin/hf3fs-admin: src/stubs/common/libstubs-common.a
bin/hf3fs-admin: src/fbs/meta/libmeta-fbs.a
bin/hf3fs-admin: src/fbs/storage/libstorage-fbs.a
bin/hf3fs-admin: src/fbs/core/service/libcore-service-fbs.a
bin/hf3fs-admin: src/fbs/core/user/libcore-user-fbs.a
bin/hf3fs-admin: src/fbs/mgmtd/libmgmtd-fbs.a
bin/hf3fs-admin: src/common/libcommon.a
bin/hf3fs-admin: src/memory/common/libmemory-common.a
bin/hf3fs-admin: src/common/libcommon.a
bin/hf3fs-admin: src/memory/common/libmemory-common.a
bin/hf3fs-admin: src/common/libversion-info.a
bin/hf3fs-admin: third_party/folly/libfolly.a
bin/hf3fs-admin: third_party/fmt/libfmt.a
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libboost_context.so.1.74.0
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.74.0
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.74.0
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.74.0
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.74.0
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.74.0
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.74.0
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libdouble-conversion.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libgflags.so.2.2.2
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libglog.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libevent.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libz.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libssl.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/liblzma.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/liblz4.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libdwarf.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libaio.so
bin/hf3fs-admin: /usr/lib/x86_64-linux-gnu/libunwind.so
bin/hf3fs-admin: third_party/scnlib/libscn.a
bin/hf3fs-admin: third_party/clickhouse-cpp/clickhouse/libclickhouse-cpp-lib-static.a
bin/hf3fs-admin: third_party/clickhouse-cpp/contrib/absl/libabsl-lib.a
bin/hf3fs-admin: third_party/clickhouse-cpp/contrib/cityhash/libcityhash-lib.a
bin/hf3fs-admin: third_party/clickhouse-cpp/contrib/lz4/liblz4-lib.a
bin/hf3fs-admin: third_party/zstd/build/cmake/lib/libzstd.a
bin/hf3fs-admin: third_party/liburing-cmake/lib3fs_liburing.a
bin/hf3fs-admin: src/tools/CMakeFiles/hf3fs-admin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jhyunlee/3FS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/hf3fs-admin"
	cd /home/jhyunlee/3FS/src/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hf3fs-admin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tools/CMakeFiles/hf3fs-admin.dir/build: bin/hf3fs-admin
.PHONY : src/tools/CMakeFiles/hf3fs-admin.dir/build

src/tools/CMakeFiles/hf3fs-admin.dir/clean:
	cd /home/jhyunlee/3FS/src/tools && $(CMAKE_COMMAND) -P CMakeFiles/hf3fs-admin.dir/cmake_clean.cmake
.PHONY : src/tools/CMakeFiles/hf3fs-admin.dir/clean

src/tools/CMakeFiles/hf3fs-admin.dir/depend:
	cd /home/jhyunlee/3FS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jhyunlee/3FS /home/jhyunlee/3FS/src/tools /home/jhyunlee/3FS /home/jhyunlee/3FS/src/tools /home/jhyunlee/3FS/src/tools/CMakeFiles/hf3fs-admin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tools/CMakeFiles/hf3fs-admin.dir/depend

