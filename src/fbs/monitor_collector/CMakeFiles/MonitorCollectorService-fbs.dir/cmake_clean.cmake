file(REMOVE_RECURSE
  "libMonitorCollectorService-fbs.a"
  "libMonitorCollectorService-fbs.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/MonitorCollectorService-fbs.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
