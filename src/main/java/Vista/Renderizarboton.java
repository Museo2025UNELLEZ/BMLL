/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Vista;

import java.awt.Color;
import java.awt.Component;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;

/**
 *
 * @author luise
 */
public class Renderizarboton extends JButton implements TableCellRenderer {
    public Renderizarboton(){
        setOpaque(true);
        setBackground(Color.red);
        setForeground(Color.WHITE);
        setText("Eliminar");
}
    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
        return  this;
    }
    
    
    
}
