#include "../include/tdoku.h"
#include "generatorLib.h"

#include <iostream>
#include <vector>

int main(int argc, char** argv) {
    auto lel = generateNPuzzles();

    std::cout << lel << std::endl;
    
    return 0;
}