#include "iostream"

#include "backend.h"

typedef const char* (WINAPI* generateNPuzzlesFunc)();

const char* GenerateSudoku()
{
    auto dll = LoadLibrary(L"msys-tdoku_shared.dll");

    const auto generate_n_puzzles = (generateNPuzzlesFunc)GetProcAddress(dll, "_Z16generateNPuzzlesv");

    auto sudoku = generate_n_puzzles();

    return nullptr;
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
