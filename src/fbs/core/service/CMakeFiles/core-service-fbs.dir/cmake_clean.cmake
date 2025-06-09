file(REMOVE_RECURSE
  "libcore-service-fbs.a"
  "libcore-service-fbs.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/core-service-fbs.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
