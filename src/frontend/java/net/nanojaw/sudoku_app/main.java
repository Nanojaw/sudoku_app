package test;

import net.nanojaw.sudoku_app.backend.backend;

public class app { 
    public static void main(String[] args) {
        System.loadLibrary("libtdoku_shared");

        System.out.println(backend.GenerateSudoku());
    }
}