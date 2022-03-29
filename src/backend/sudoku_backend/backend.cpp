#include "iostream"

#include "backend.h"

typedef const char* (__stdcall* generateNPuzzlesType)(int argc, char** argv);

generateNPuzzlesType generateNPuzzles;

void load_find_logic_functions()
{
	auto DLL = LoadLibrary(L"msys-tdoku_shared.dll");

	generateNPuzzles = (generateNPuzzlesType)GetProcAddress(DLL, "generateNPuzzles");
}

const char* GenerateSudoku()
{
    load_find_logic_functions();

    auto lel = generateNPuzzles();

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
