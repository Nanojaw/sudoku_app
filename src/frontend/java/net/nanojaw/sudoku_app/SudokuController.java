package net.nanojaw.sudoku_app;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.layout.*;

public class SudokuController {
    @FXML
    GridPane sudoku;

    public void initialize() {
        // TODO Load sudoku
    }

    public void onSelect(ActionEvent evt) {
        Button caller = (Button)evt.getSource();
        caller.setOnKeyReleased(keyEvent -> {
            if (keyEvent.getCode().isDigitKey()) {
                caller.setText(keyEvent.getCode().getChar());
            }
        });
    }
}