module net.nanojaw.sudoku_app {
    requires javafx.controls;
    requires javafx.fxml;

    requires com.dlsc.formsfx;
    requires validatorfx;
    requires org.kordamp.ikonli.javafx;

    opens net.nanojaw.sudoku_app to javafx.fxml;
    exports net.nanojaw.sudoku_app;
}