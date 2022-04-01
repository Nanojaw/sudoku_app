package net.nanojaw.sudoku_app;

import javafx.animation.KeyFrame;
import javafx.animation.KeyValue;
import javafx.animation.Timeline;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.input.KeyCode;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.util.Duration;

import java.util.Map;

public class SudokuController {

    Sudoku sudoku;

    @FXML
    GridPane mainGrid;

    @FXML
    Label label;

    boolean canPlace(KeyCode code, Map<Object, Object> property) {
        return sudoku.fits(Integer.parseInt(code.getName()), (int) property.get("index"));
    }

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

        sudoku = new Sudoku(new byte[]{


                5, 6, 9, 3, 7, 4, 2, 8, 1,
                8, 3, 1, 2, 6, 9, 7, 4, 5,
                4, 7, 2, 1, 8, 5, 9, 3, 6,
                3, 9, 8, 6, 5, 2, 4, 1, 7,
                1, 4, 5, 7, 9, 3, 6, 2, 8,
                7, 2, 6, 4, 1, 8, 3, 5, 9,
                9, 1, 4, 5, 2, 6, 8, 7, 3,
                2, 8, 7, 9, 3, 1, 5, 6, 4,
                6, 5, 3, 8, 4, 7, 1, 9, 2
        });
        String grid = bytesToString(ToGrid(sudoku.sudoku));
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

                // Associate button with index
                button.setText(String.valueOf(grid.charAt(index)));
                button.getProperties().putIfAbsent("index", index);

                if (grid.charAt(index) != ' ') button.setDisable(true);
                index++;
            }
        }
    }

    void cantPlace(Button caller) {
        caller.setText(" ");

        Background old = caller.getBackground();
        Background back = new Background(new BackgroundFill(Color.RED, CornerRadii.EMPTY, Insets.EMPTY));

        Timeline fade = new Timeline(
                new KeyFrame(
                        Duration.millis(0),
                        new KeyValue(caller.backgroundProperty(), back)
                ),
                new KeyFrame(
                        Duration.millis(20),
                        new KeyValue(caller.backgroundProperty(), old)
                )
        );

        fade.playFromStart();
    }

    public void onSelect(ActionEvent evt) {
        Button caller = (Button) evt.getSource(); // Get caller button
        caller.setOnKeyReleased(keyEvent -> { // Bind lambda to OnKeyReleased, paused when other button is clicked
            if (keyEvent.getCode().isDigitKey()) {
                if (keyEvent.getCode() == KeyCode.DIGIT0) {
                    caller.setText(" "); // If 0, set to blank
                    return;
                }
                if (!canPlace(keyEvent.getCode(), caller.getProperties())) {
                    cantPlace(caller);
                    return;
                }
                caller.setText(keyEvent.getCode().getChar());

                sudoku.sudoku[(int) caller.getProperties().get("index")] = Byte.parseByte(keyEvent.getCode().getChar());

                //TODO Implement victory checking
                if (sudoku.done()) label.setText("Victory");
            }
        });
    }
}