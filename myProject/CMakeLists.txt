cmake_minimum_required(VERSION 3.16)

project(
    MyMultiBinarySandbox
    VERSION 0.1.2
    DESCRIPTION "A multi binary and multi library CMake project"
    LANGUAGES CXX # CUDA 
)

# Check if this the toplevel CMakeLists.txt
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)

    # set C++11 standard
    # set(CMAKE_CXX_STANDARD 11 CACHE STRING "The C++ standard to use")
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)

    # use -std=c++11 but not -std=g++11
    set(CMAKE_CXX_EXTENSIONS OFF)


    # testing must be enabled in the toplevel file
    include(CTest)

endif()


add_subdirectory(libs)

add_subdirectory(apps/AppA)
