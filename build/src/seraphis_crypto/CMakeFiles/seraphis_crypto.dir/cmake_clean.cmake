file(REMOVE_RECURSE
  "libseraphis_crypto.a"
  "libseraphis_crypto.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/seraphis_crypto.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
