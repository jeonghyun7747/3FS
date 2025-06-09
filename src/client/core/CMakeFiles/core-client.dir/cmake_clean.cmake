file(REMOVE_RECURSE
  "libcore-client.a"
  "libcore-client.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/core-client.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
