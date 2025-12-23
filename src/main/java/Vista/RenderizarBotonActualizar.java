/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Vista;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;


public class RenderizarBotonActualizar extends JButton implements TableCellRenderer {
    public RenderizarBotonActualizar(){
        setOpaque(true);
        setBackground(Color.blue);
        setForeground(Color.WHITE);
        setFont(new Font("Segoe UI", Font.BOLD, 12));
        setText("Actualizar");
        setBorder(BorderFactory.createLineBorder(new Color(30, 144, 255), 2, true));
        setFocusPainted(false);
    }

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
        return this;
    }
}

