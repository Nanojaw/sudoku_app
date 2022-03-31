#include "iostream"

#include "backend.h"

const char* GenerateSudoku()
{
    auto lel = generateNPuzzles();

    return lel;
}

const char* GenerateHexSudoku()
{
    return nullptr;
}

void Free(sudokutype type)
{
}

const char* LoadSudoku()
{
    return nullptr;
}

const char* LoadHexSudoku()
{
    return nullptr;
}

void SaveSudoku()
{
}

void SaveHexSudoku()
{
}
