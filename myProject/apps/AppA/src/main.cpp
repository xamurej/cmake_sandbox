#include <libA/alpha.h>
#include <libX/libX.h>

#include <iostream>

int main() {
    std::cout << libA::get_alpha() << std::endl;
    std::cout << libA::get_alphabet() << std::endl;
    std::cout << libA::Alpha::get() << std::endl;

    print_libx();
}