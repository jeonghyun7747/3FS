# Install script for directory: /home/jhyunlee/3FS/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jhyunlee/3FS/src/fbs/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/common/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/meta/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/client/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/lib/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/memory/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/kv/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/storage/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/mgmtd/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/fdb/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/stubs/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/monitor_collector/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/analytics/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/core/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/tools/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/fuse/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/simple_example/cmake_install.cmake")
  include("/home/jhyunlee/3FS/src/migration/cmake_install.cmake")

endif()

