get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
# message("---SELF_DIR: " "${SELF_DIR}")

add_library(libX SHARED IMPORTED GLOBAL)
add_library(libX::libX ALIAS libX)

set_target_properties(libX PROPERTIES 
    IMPORTED_LOCATION "${SELF_DIR}/liblibX.so"
    # IMPORTED_LOCATION_DEBUG "${SELF_DIR}/liblibX_debug.so"
    # IMPORTED_CONFIGURATIONS "RELEASE;DEBUG"
)

target_include_directories(libX INTERFACE "${SELF_DIR}/include")

#set(libX_INCLUDE_DIRS "${SELF_DIR}/include")
#set(libX_LIBRARIES "${SELF_DIR}/liblibX.so")
