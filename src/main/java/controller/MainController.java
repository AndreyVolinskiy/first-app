package controller;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.text.Text;

import java.net.URL;
import java.util.ResourceBundle;

public class MainController implements Initializable{
    @FXML
    private Button btnHello;
    @FXML
    private TextField txtHello;
    @FXML
    private Text txtName;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        btnHello.setOnAction(event -> setName());

    }

    private void setName() {
        txtName.setText(("Hello " + txtHello.getText()));
        txtHello.setText("");
    }

}
