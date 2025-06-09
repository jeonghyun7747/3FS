file(REMOVE_RECURSE
  "libanalytics.a"
  "libanalytics.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/analytics.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
