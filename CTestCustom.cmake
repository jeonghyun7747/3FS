file (STRINGS "/home/jhyunlee/3FS/CTestTestfile.cmake" LINES)

# overwrite the file....
file(WRITE "/home/jhyunlee/3FS/CTestTestfile.cmake" "")

# loop through the lines,
foreach(LINE IN LISTS LINES)
  # remove unwanted parts
  string(REGEX REPLACE ".*third_party.*" "" STRIPPED "${LINE}")
  # and write the (changed) line ...
  file(APPEND "/home/jhyunlee/3FS/CTestTestfile.cmake" "${STRIPPED}\n")
endforeach()
