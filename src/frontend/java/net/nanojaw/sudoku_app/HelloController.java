package net.nanojaw.sudoku_app;

import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.Label;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.StackPane;

import java.util.ArrayList;
import java.util.List;

public class HelloController {
    @FXML
    GridPane sudoku;

    public void initialize(){

        // Getting the children of the main sudoku
        Object[] nodes = sudoku.getChildren().toArray();

        // Iterating over the squares and their boxes
        for (int i = 0; i < 9; i++) {
            for (int j = 0; j < 9; j++) {
                StackPane child = new StackPane();
                Label label = new Label(Integer.toString(j));
                // TODO add function for changing values

                child.getChildren().addAll(label);
                GridPane box = (GridPane)nodes[i];
                box.add(child, j % 3, j / 3);
            }
        }
    }
}