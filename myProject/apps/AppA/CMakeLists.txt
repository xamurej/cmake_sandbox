configure_file(src/version.h.in src/version.h)

add_executable(AppA src/main.cpp src/version.h)

target_compile_features(AppA PRIVATE cxx_std_14)
target_link_libraries(AppA PRIVATE libA::libA)

# set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/../../../3rdparty/libs/install/libX")
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/../../../3rdparty/libs/install")
# set(libX_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../../../3rdparty/libs/install/libX")
# message("---libX_DIR: " "${CMAKE_CURRENT_SOURCE_DIR}/../../../3rdparty/libs/install/libX")
find_package(libX REQUIRED)

target_link_libraries(AppA PRIVATE libX::libX)

