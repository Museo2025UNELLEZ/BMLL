/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista;
import com.toedter.calendar.JCalendar;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Component;
import java.awt.Font;
import java.awt.Dimension;
import com.toedter.calendar.JDateChooser;
import controlador.conexionSQL;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.swing.DefaultComboBoxModel;   
import java.sql.Connection;               
import java.sql.Statement;                
import java.sql.ResultSet;                
import java.sql.SQLException;
import javax.swing.JComboBox;
import javax.swing.JSpinner;
import javax.swing.UIManager;
import javax.swing.JComponent;



/**
 *
 * @author luise
 */
public class AgregarLibro extends javax.swing.JFrame {
    private Connection con;
    
    private JDateChooser dateChooser;
    
  
    
    public AgregarLibro() {
        initComponents();
        jDayChooser1.setVisible(false);
        jMonthChooser3.setVisible(false);
        jYearChooser1.setVisible(false);
        jButtonFecha.addActionListener(e -> {
            boolean visible = !jYearChooser1.isVisible();
            jYearChooser1.setVisible(visible);
            jMonthChooser3.setVisible(visible);
            jDayChooser1.setVisible(visible);
        });
        // Método para actualizar el campo de texto
        Runnable actualizar = () -> {
        int year = jYearChooser1.getYear();
        int month = jMonthChooser3.getMonth() + 1; // MonthChooser empieza en 0
        int day = jDayChooser1.getDay();
        jTextFieldFecha.setText(
            String.format("%04d-%02d-%02d", year, month, day)
    );
};

// Listeners
jYearChooser1.addPropertyChangeListener("year", e -> actualizar.run());
jMonthChooser3.addPropertyChangeListener("month", e -> actualizar.run());
jDayChooser1.addPropertyChangeListener("day", e -> actualizar.run());

