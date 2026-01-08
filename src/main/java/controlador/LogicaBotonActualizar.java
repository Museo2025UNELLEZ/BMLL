/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import Modelo.Libro;
import Vista.ActualizarLibro;
import java.awt.Color;
import java.awt.Component;
import static java.awt.SystemColor.control;
import java.awt.Window;
import javax.swing.DefaultCellEditor;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.SwingUtilities;

/**
 *
 * @author gordo
 *//*
public class LogicaBotonActualizar extends DefaultCellEditor {
    private JButton boton;
    private JTable tabla;
    private int row;
    private controlLibro control;

    public LogicaBotonActualizar(JCheckBox checkBox, JTable tabla, controlLibro control){
        super(checkBox);
        this.tabla = tabla;
        this.control = control;

        boton = new JButton("Actualizar");
        boton.setBackground(Color.blue);
        boton.setForeground(Color.WHITE);

        boton.addActionListener(e -> fireEditingStopped());
    }

    @Override
    public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
        this.row = row;
        return boton;
    }

    @Override
    public Object getCellEditorValue() {
        int id = (int) tabla.getValueAt(row, 0);

        Libro libro = control.obtenerLibroPorId(id);

        if(libro != null){
            ActualizarLibro ventana = new ActualizarLibro(control, libro);
            ventana.setVisible(true);
        } else {
            JOptionPane.showMessageDialog(tabla,"No se pudo cargar el libro","Error",JOptionPane.ERROR_MESSAGE);
        }

        return null;
    }
}*/

public class LogicaBotonActualizar extends DefaultCellEditor {
    private JButton boton;
    private JTable tabla;
    private int row;
    private controlLibro control;

    public LogicaBotonActualizar(JCheckBox checkBox, JTable tabla, controlLibro control){
        super(checkBox);
        this.tabla = tabla;
        this.control = control;

        boton = new JButton("Actualizar");
        boton.setBackground(Color.blue);
        boton.setForeground(Color.WHITE);

        boton.addActionListener(e -> fireEditingStopped());

    }

    @Override
    public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
        this.row = row;
        return boton;
    }

    @Override
    public Object getCellEditorValue() {
        int id = (int) tabla.getValueAt(row, 0);

        // Obtener datos completos del libro
        Libro libro = control.obtenerLibroPorId(id);

        if(libro != null){
            // Cerrar la ventana que contiene la tabla
            Window parentWindow = SwingUtilities.getWindowAncestor(tabla);
            if (parentWindow != null) {
                parentWindow.dispose();
            }
    
            // Abrir la ventana de actualización
            ActualizarLibro ventana = new ActualizarLibro(control, libro);
            ventana.setVisible(true);
            ventana.setLocationRelativeTo(null);
        } else {
            JOptionPane.showMessageDialog(tabla,"No se pudo cargar el libro","Error",JOptionPane.ERROR_MESSAGE);
        }

        return null;
    }
}


