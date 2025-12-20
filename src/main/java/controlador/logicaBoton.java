/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.awt.Color;
import java.awt.Component;
import java.awt.SystemColor;
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
    
    public logicaBoton(JCheckBox checkBox, JTable tabla, SystemColor control){
        super(checkBox);
        this.tabla = tabla;
        this.boton = boton;
        
        boton = new JButton("Eliminar");
        boton.setBackground(Color.red);
        boton.setForeground(Color.WHITE);
        
        boton.addActionListener(e -> fireEditingStopped());
      
    }
    
    @Override public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
        this.row = row; return boton;
    }
    @Override public Object getCellEditorValue() {
        int opcion = JOptionPane.showConfirmDialog(tabla, "¿Seguro que deseas eliminar este libro?", "Confirmar eliminación", JOptionPane.YES_NO_OPTION);
    if (opcion == JOptionPane.YES_OPTION) { 
        String titulo = (String) tabla.getValueAt(row, 0);
        
        control.eliminarPorLibro(titulo); 
        
    ((DefaultTableModel) tabla.getModel()).removeRow(row); } return null; }
    
}
