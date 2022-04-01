file(REMOVE_RECURSE
  "libtdoku_static.a"
  "libtdoku_static.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/tdoku_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
