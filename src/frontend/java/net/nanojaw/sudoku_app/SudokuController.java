package net.nanojaw.sudoku_app;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;

import javafx.scene.input.KeyCode;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.StackPane;

public class SudokuController {

    String sudoku;

    @FXML
    GridPane mainGrid;

    Byte[] ToGrid(Byte[] bytes) {
        Byte[] grid = new Byte[bytes.length];

        int index = 0;
        for (int a = 0; a < 81; a += 27) {
            for (int b = 0; b < 9; b += 3) {
                for (int c = 0; c < 27; c += 9) {
                    for (int d = 0; d < 3; d++) {
                        grid[a + b + c + d] = bytes[index];
                        index++;
                    }
                }
            }
        }
        return grid;
    }

    String bytesToString(Byte[] bytes) {
        StringBuilder str = new StringBuilder();
        for (Byte aByte : bytes) {
            if (aByte == 0) {
                str.append(" ");
            } else {
                str.append(aByte);
            }
        }
        return str.toString();
    }

    public void initialize() {
        // TODO Add when backend is done
        //sudoku = backend.LoadSudoku();
        Byte[] bs = ToGrid(new Byte[]{
                5, 0, 0, 0, 0, 0, 2, 8, 0,
                0, 0, 0, 2, 0, 9, 0, 4, 5,
                0, 7, 0, 0, 8, 0, 0, 0, 0,

                3, 0, 8, 0, 5, 2, 4, 1, 7,
                1, 0, 5, 7, 9, 3, 6, 2, 0,
                7, 0, 6, 0, 0, 0, 0, 0, 9,

                9, 1, 0, 0, 2, 6, 0, 0, 0,
                2, 0, 0, 0, 0, 0, 0, 0, 4,
                0, 5, 0, 8, 0, 7, 1, 0, 0
        });

        sudoku = bytesToString(bs);
        System.out.println(sudoku);

        Object[] objs = mainGrid.getChildren().toArray();
        int index = 0;
        for (int i = 0; i < objs.length - 1; i++) { // Last object is a group
            GridPane square = (GridPane) objs[i];
            Object[] boxes = square.getChildren().toArray();
            for (int j = 0; j < boxes.length - 1; j++) {
                StackPane pane = (StackPane) boxes[j];
                Button button = (Button) pane.getChildren().toArray()[0];

                button.setText(String.valueOf(sudoku.charAt(index)));
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