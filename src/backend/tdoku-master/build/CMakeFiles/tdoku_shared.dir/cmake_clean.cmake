file(REMOVE_RECURSE
  "libtdoku_shared.pdb"
  "libtdoku_shared.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/tdoku_shared.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
