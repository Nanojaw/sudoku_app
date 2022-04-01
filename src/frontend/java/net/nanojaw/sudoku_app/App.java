package net.nanojaw.sudoku_app;

import net.nanojaw.sudoku_app.backend.backend;

public class App {
    public static void main(String[] args) {
        System.loadLibrary("backend");

        System.out.println(backend.GenerateSudoku());
    }
}