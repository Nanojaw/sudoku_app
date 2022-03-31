file(REMOVE_RECURSE
  "libbackend_static.a"
  "libbackend_static.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/backend_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
