file(REMOVE_RECURSE
  "libmigration-fbs.a"
  "libmigration-fbs.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/migration-fbs.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
