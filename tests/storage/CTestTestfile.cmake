# CMake generated Testfile for 
# Source directory: /home/jhyunlee/3FS/tests/storage
# Build directory: /home/jhyunlee/3FS/tests/storage
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_storage "/home/jhyunlee/3FS/tests/test_storage")
set_tests_properties(test_storage PROPERTIES  _BACKTRACE_TRIPLES "/home/jhyunlee/3FS/cmake/Target.cmake;66;add_test;/home/jhyunlee/3FS/tests/storage/CMakeLists.txt;5;target_add_test;/home/jhyunlee/3FS/tests/storage/CMakeLists.txt;0;")
subdirs("client")
subdirs("service")
subdirs("store")
subdirs("sync")
