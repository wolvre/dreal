add_library(opensmt_common LA.C)
target_link_libraries(opensmt_common util)
add_dependencies(opensmt_common util)