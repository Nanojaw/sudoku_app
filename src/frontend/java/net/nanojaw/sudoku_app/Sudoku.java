package net.nanojaw.sudoku_app;

import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;

import static java.util.Map.entry;

public class Sudoku {
    private final Map<Integer, Integer> _to_square = Map.<Integer, Integer>ofEntries(
            entry(0, 0), entry(1, 0), entry(2, 0), entry(3, 3), entry(4, 3), entry(5, 3), entry(6, 6), entry(7, 6), entry(8, 6),
            entry(9, 0), entry(10, 0), entry(11, 0), entry(12, 3), entry(13, 3), entry(14, 3), entry(15, 6), entry(16, 6), entry(17, 6),
            entry(18, 0), entry(19, 0), entry(20, 0), entry(21, 3), entry(22, 3), entry(23, 3), entry(24, 6), entry(25, 6), entry(26, 6),

            entry(27, 27), entry(28, 27), entry(29, 27), entry(30, 30), entry(31, 30), entry(32, 30), entry(33, 33), entry(34, 33), entry(35, 33),
            entry(36, 27), entry(37, 27), entry(38, 27), entry(39, 30), entry(40, 30), entry(41, 30), entry(42, 33), entry(43, 33), entry(44, 33),
            entry(45, 27), entry(46, 27), entry(47, 27), entry(48, 30), entry(49, 30), entry(50, 30), entry(51, 33), entry(52, 33), entry(53, 33),

            entry(54, 54), entry(55, 54), entry(56, 54), entry(57, 57), entry(58, 57), entry(59, 57), entry(60, 60), entry(61, 60), entry(62, 60),
            entry(63, 54), entry(64, 54), entry(65, 54), entry(66, 57), entry(67, 57), entry(68, 57), entry(69, 60), entry(70, 60), entry(71, 60),
            entry(72, 54), entry(73, 54), entry(74, 54), entry(75, 57), entry(76, 57), entry(77, 57), entry(78, 60), entry(79, 60), entry(80, 60));

    public final byte[] sudoku;
    public final byte[] finished;

    public Sudoku(byte[] sudoku) {
        this.sudoku = Arrays.copyOfRange(sudoku, 0, 81);
        this.finished = Arrays.copyOfRange(sudoku, 81, 162);
    }

    boolean fitsHorizontal(int number, int index) {
        for (int i = 0; i < 9; i++) {
            if (sudoku[i + (index / 9) * 9] == number) return false;
        }
        return true;
    }

    boolean fitsVertical(int number, int index) {
        for (int i = 0; i < 9; i++) {
            if (sudoku[i * 9 + (index % 9)] == number) return false;
        }
        return true;
    }

    boolean fitsSquare(int number, int index) {
        int square = _to_square.get(index);
        for (int i = 0; i < 27; i+=9) {
            for (int j = 0; j < 3; j++) {
                if (sudoku[square + i + j] == number) return false;
            }
        }
        return true;
    }

    boolean fits(int number, int index) {
        return (fitsHorizontal(number, index) && fitsVertical(number, index) && fitsSquare(number, index));
    }

    boolean done() {
        // Checking for zeroes, since if there are none
        for (int i = 0; i < 81; i++) {
            if (sudoku[i] == 0) return false;
            if (sudoku[i] != finished[i]) System.out.println("Invalid sudoku");
        }
        return true;
    }
}
