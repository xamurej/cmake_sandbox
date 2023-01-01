add_library(libX SHARED IMPORTED GLOBAL)
add_library(libX::libX ALIAS libX)

get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
message("---SELF_DIR: " "${SELF_DIR}")

#set(libX_INCLUDE_DIRS "${SELF_DIR}/include")
#set(libX_LIBRARIES "${SELF_DIR}/liblibX.so")
#set(libX_FOUND True)
#set(libX_NOT_FOUND False)
message("---libX_LIBRARIES: " "${libX_LIBRARIES}")

set_target_properties(libX PROPERTIES 
    IMPORTED_LOCATION "${SELF_DIR}/liblibX.so"
    # IMPORTED_LINK_INTERFACE_LIBRARIES "${ZLIB_LIBRARIES};${CMAKE_THREAD_LIBS_INIT}"
    INTERFACE_INCLUDE_DIRECTORIES "${SELF_DIR}/include")