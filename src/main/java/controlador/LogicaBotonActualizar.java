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
        try {
            // Try to get ID from the visible table cell first
            Integer id = null;
            Object val = tabla.getValueAt(row, 0);
            if (val instanceof Number) {
                id = ((Number) val).intValue();
            } else if (val instanceof String) {
                try { id = Integer.parseInt((String) val); } catch (NumberFormatException ex) { id = null; }
            }
            // Fallback: use the rowIds client property stored by the table updater
            if (id == null) {
                Object prop = tabla.getClientProperty("rowIds");
                if (prop instanceof java.util.List) {
                    java.util.List<?> ids = (java.util.List<?>) prop;
                    if (row >= 0 && row < ids.size()) {
                        Object rid = ids.get(row);
                        if (rid instanceof Number) id = ((Number) rid).intValue();
                        else if (rid instanceof String) {
                            try { id = Integer.parseInt((String) rid); } catch (NumberFormatException ex) { id = null; }
                        }
                    }
                }
            }

            if (id == null) throw new IllegalStateException("ID de libro no disponible para la fila seleccionada");

            // Obtener datos completos del libro
            Libro libro = control.obtenerLibroPorId(id);

        if(libro != null){
            // intentar obtener el estado de búsqueda de la ventana padre (si es BuscarLibroActualizar)
            String prevTitle = null;
            int prevCategoryId = -1;
            Window parentWindow = SwingUtilities.getWindowAncestor(tabla);
            if (parentWindow != null) {
                if (parentWindow instanceof Vista.BuscarLibroActualizar) {
                    Vista.BuscarLibroActualizar buscar = (Vista.BuscarLibroActualizar) parentWindow;
                    prevTitle = buscar.getCurrentSearchTitle();
                    prevCategoryId = buscar.getCurrentSelectedCategoryId();
                }
                // cerrar la ventana que contiene la tabla
                parentWindow.dispose();
            }

            // Abrir la ventana de actualización pasando el estado previo para que pueda restaurarse al volver
            ActualizarLibro ventana = new ActualizarLibro(control, libro, prevTitle, prevCategoryId);
            ventana.setLocationRelativeTo(null);
            ventana.setVisible(true);
            } else {
                JOptionPane.showMessageDialog(tabla,"No se pudo cargar el libro","Error",JOptionPane.ERROR_MESSAGE);
            }
        } catch (Exception ex) {
            // Mostrar el error para facilitar diagnóstico en tiempo de ejecución
            JOptionPane.showMessageDialog(tabla, "Error al procesar la fila: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }

        return null;
    }
}


