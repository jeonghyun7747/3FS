
if(NOT "/home/jhyunlee/3FS/src/apache-arrow-cpp-stamp/apache-arrow-cpp-gitinfo.txt" IS_NEWER_THAN "/home/jhyunlee/3FS/src/apache-arrow-cpp-stamp/apache-arrow-cpp-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/jhyunlee/3FS/src/apache-arrow-cpp-stamp/apache-arrow-cpp-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/jhyunlee/3FS/src/apache-arrow-cpp"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/jhyunlee/3FS/src/apache-arrow-cpp'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --depth 1 --no-single-branch --progress --config "advice.detachedHead=false" "https://github.com/apache/arrow.git" "apache-arrow-cpp"
    WORKING_DIRECTORY "/home/jhyunlee/3FS/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/apache/arrow.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout b7d2f7ffca66c868bd2fce5b3749c6caa002a7f0 --
  WORKING_DIRECTORY "/home/jhyunlee/3FS/src/apache-arrow-cpp"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'b7d2f7ffca66c868bd2fce5b3749c6caa002a7f0'")
endif()

set(init_submodules FALSE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/jhyunlee/3FS/src/apache-arrow-cpp"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/jhyunlee/3FS/src/apache-arrow-cpp'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/jhyunlee/3FS/src/apache-arrow-cpp-stamp/apache-arrow-cpp-gitinfo.txt"
    "/home/jhyunlee/3FS/src/apache-arrow-cpp-stamp/apache-arrow-cpp-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/jhyunlee/3FS/src/apache-arrow-cpp-stamp/apache-arrow-cpp-gitclone-lastrun.txt'")
endif()

