/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.awt.Color;
import java.awt.Component;
import javax.swing.DefaultCellEditor;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author luise
 */
public class logicaBoton extends DefaultCellEditor{
    
    private JButton boton;
    private JTable tabla;
    private int row;
    private controlLibro control;
    private Runnable onDeleted;
    
    // constructor completo con callback opcional
    public logicaBoton(JCheckBox checkBox, JTable tabla, controlLibro control, Runnable onDeleted){
        super(checkBox);
        this.tabla = tabla;
        this.control = control;
        this.onDeleted = onDeleted;
        
        boton = new JButton("Eliminar");
        boton.setBackground(Color.red);
        boton.setForeground(Color.WHITE);
        
        boton.addActionListener(e -> fireEditingStopped());
      
    }

    // sobrecarga para compatibilidad con llamadas que no pasan un callback
    public logicaBoton(JCheckBox checkBox, JTable tabla, controlLibro control){
        this(checkBox, tabla, control, null);
    }
    
    @Override public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
        this.row = row; return boton;
    }
    @Override public Object getCellEditorValue() {
        try {
            int opcion = JOptionPane.showConfirmDialog(tabla, "¿Seguro que deseas eliminar este libro?", "Confirmar eliminación", JOptionPane.YES_NO_OPTION);
            if (opcion == JOptionPane.YES_OPTION) {
                // safety checks: ensure table has columns and the row is valid
                if (tabla.getColumnCount() > 0 && row >= 0 && row < tabla.getRowCount()) {
                    Object val = tabla.getValueAt(row, 0);
                    int id;
                    if (val instanceof Number) {
                        id = ((Number) val).intValue();
                    } else if (val instanceof String) {
                        try {
                            id = Integer.parseInt((String) val);
                        } catch (NumberFormatException nfe) {
                            JOptionPane.showMessageDialog(tabla, "No se pudo convertir el ID del libro (valor inválido)", "Error", JOptionPane.ERROR_MESSAGE);
                            return null;
                        }
                    } else {
                        JOptionPane.showMessageDialog(tabla, "No se pudo obtener el ID del libro (valor inválido)", "Error", JOptionPane.ERROR_MESSAGE);
                        return null;
                    }
                        int verif = control.eliminarPorId(id);

                        if (verif > 0) {
                            JOptionPane.showMessageDialog(tabla, "El libro fue eliminado EXISTOSAMENTE", "EXITO", JOptionPane.INFORMATION_MESSAGE);
                        } else {
                            JOptionPane.showMessageDialog(tabla, "Hubo un error y no se pudo eliminar el libro seleccionado", "Error", JOptionPane.ERROR_MESSAGE);
                        }

                        ((DefaultTableModel) tabla.getModel()).removeRow(row);
                        // ejecutar callback opcional después de eliminar para que la UI pueda reaccionar
                        if (onDeleted != null) {
                            try { onDeleted.run(); } catch (Exception ex) { /* swallow callback errors */ }
                        }
                } else {
                    JOptionPane.showMessageDialog(tabla, "Fila o columnas inválidas en la tabla.", "Error", JOptionPane.ERROR_MESSAGE);
                }
            }
        } catch (Exception ex) {
            // captura y muestra cualquier error inesperado para evitar que la UI falle sin control
            JOptionPane.showMessageDialog(tabla, "Error al intentar eliminar el libro: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
        return null;
    }
    
}
