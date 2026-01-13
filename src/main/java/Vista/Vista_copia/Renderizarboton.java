/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Vista.Vista_copia;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;


public class Renderizarboton extends JButton implements TableCellRenderer {
    public Renderizarboton(){
        setOpaque(true);
        setBackground(Color.red);
        setForeground(Color.WHITE);
        setFont(new Font("Segoe UI", Font.BOLD, 12));
        setText("Eliminar");
        
        // Bordes redondeados
        setBorder(BorderFactory.createLineBorder(new Color(200, 35, 51), 2, true));

        // Quitar el efecto de foco
        setFocusPainted(false);
}
    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
        return  this;
    }
    
    
    
}
