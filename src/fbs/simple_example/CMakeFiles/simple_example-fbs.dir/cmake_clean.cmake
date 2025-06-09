file(REMOVE_RECURSE
  "libsimple_example-fbs.a"
  "libsimple_example-fbs.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/simple_example-fbs.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
