package net.nanojaw.sudoku_app;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;

import javafx.scene.input.KeyCode;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.StackPane;

import java.util.Arrays;

public class SudokuController {

    String sudoku;

    @FXML
    GridPane mainGrid;

    // TODO Make changing numbers only work for numbers that fit

    // Convert from regular sudoku to grid
    byte[] ToGrid(byte[] bytes) {
        byte[] grid = new byte[bytes.length];

        int index = 0;
        for (int a = 0; a < 81; a += 27) { // Go down in the main grid
            for (int b = 0; b < 9; b += 3) { // Go left in the main grid
                for (int c = 0; c < 27; c += 9) { // Go down in the square
                    for (int d = 0; d < 3; d++) { // Go left in the square
                        grid[a + b + c + d] = bytes[index];
                        index++;
                    }
                }
            }
        }
        return grid;
    }

    String bytesToString(byte[] bytes) {
        StringBuilder str = new StringBuilder();
        for (byte aByte : bytes) {
            if (aByte == 0) {
                str.append(" ");
            } else {
                str.append(aByte);
            }
        }
        return str.toString();
    }

    public void initialize() {

        sudoku = new String(new byte[]{
                5, 0, 0, 0, 0, 0, 2, 8, 0,
                0, 0, 0, 2, 0, 9, 0, 4, 5,
                0, 7, 0, 0, 8, 0, 0, 0, 0,

                3, 0, 8, 0, 5, 2, 4, 1, 7,
                1, 0, 5, 7, 9, 3, 6, 2, 0,
                7, 0, 6, 0, 0, 0, 0, 0, 9,

                9, 1, 0, 0, 2, 6, 0, 0, 0,
                2, 0, 0, 0, 0, 0, 0, 0, 4,
                0, 5, 0, 8, 0, 7, 1, 0, 0});
        String grid = bytesToString(ToGrid(sudoku.getBytes()));
        // TODO Add when backend is done
        //sudoku = backend.LoadSudoku();
        //grid = bytesToString(ToGrid(sudoku.getBytes()));

        Object[] objs = mainGrid.getChildren().toArray(); // Get the 3x3 squares
        int index = 0;
        for (int i = 0; i < objs.length - 1; i++) { // Last object is a group
            GridPane square = (GridPane) objs[i];
            Object[] boxes = square.getChildren().toArray(); // Get the number boxes in the squares
            for (int j = 0; j < boxes.length - 1; j++) {
                StackPane pane = (StackPane) boxes[j];
                Button button = (Button) pane.getChildren().toArray()[0]; // The first object is the button

                button.setText(String.valueOf(grid.charAt(index)));
                index++;
            }
        }
    }

    public void onSelect(ActionEvent evt) {
        Button caller = (Button) evt.getSource(); // Get caller button
        caller.setOnKeyReleased(keyEvent -> { // Bind lambda to OnKeyReleased, paused when other button is clicked
            if (keyEvent.getCode().isDigitKey()) {
                caller.setText(keyEvent.getCode().getChar());
                if(keyEvent.getCode() == KeyCode.DIGIT0) caller.setText(" "); // If 0, set to blank
            }

        });
    }
}