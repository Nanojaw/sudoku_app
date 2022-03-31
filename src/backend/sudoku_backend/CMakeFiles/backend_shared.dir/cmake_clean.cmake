file(REMOVE_RECURSE
  "libbackend_shared.pdb"
  "libbackend_shared.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/backend_shared.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
