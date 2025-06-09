file(REMOVE_RECURSE
  "libstubs-common.a"
  "libstubs-common.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/stubs-common.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
