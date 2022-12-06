add_executable(AppA src/main.cpp)

target_compile_features(AppA PRIVATE cxx_std_14)
target_link_libraries(AppA PRIVATE libA::libA)
