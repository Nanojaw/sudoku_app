#include "iostream"
#include "../sudoku_backend/backend.h"

int main(int argc, char** argv)
{
    auto sudoku = GenerateSudoku(argc, argv);
    
    return 0;
}