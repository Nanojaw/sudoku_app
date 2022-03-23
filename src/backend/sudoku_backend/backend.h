#pragma once

// Function for exporting sudoku
const char16_t* GenerateSudoku();

// Functions for exporting hexadecimal sudokus
const char16_t* GenerateHexSudoku();

// The GenerateSudoku function should return a 162 characters long string.
// The first 81 characters should be the playable sudoku, with numbers between 1 and 9, using 0 as blank
// The last 81 characters should be the finished sudoku, not containing any blanks

// The same applies for GenerateHexSudoku, but its return string should be 512 characters, 256 for each sudoku, using space as blank