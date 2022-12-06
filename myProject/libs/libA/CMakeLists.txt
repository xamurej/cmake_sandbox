
set(PUBLIC_HEADERS 
    include/libA/alpha.h
)

set(PRIVATE_HEADERS 
)

set(SOURCES
    src/alpha.cpp
)

add_library(libA ${PUBLIC_HEADERS} ${PRIVATE_HEADERS} ${SOURCES})
add_library(libA::libA ALIAS libA)

target_include_directories(libA PUBLIC include)
target_include_directories(libA PRIVATE include/libA)


