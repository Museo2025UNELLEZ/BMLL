/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Vista;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;


public class Renderizarboton extends JButton implements TableCellRenderer {
    public Renderizarboton(){
        setOpaque(true);
        setBackground(Color.red);
        setForeground(Color.WHITE);
        setFont(new Font("Verdana", Font.BOLD, 18));
        setText("Eliminar");
        
        // Bordes redondeados
        setBorder(BorderFactory.createLineBorder(new Color(200, 35, 51), 2, true));

        // Quitar el efecto de foco
        setFocusPainted(false);
}
    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
        // Ensure a hover listener is installed once per table
        if (table.getClientProperty("hoverListenerInstalled") == null) {
            MouseMotionAdapter mma = new MouseMotionAdapter() {
                @Override
                public void mouseMoved(MouseEvent e) {
                    int hr = table.rowAtPoint(e.getPoint());
                    int hc = table.columnAtPoint(e.getPoint());
                    table.putClientProperty("hoverRow", hr);
                    table.putClientProperty("hoverColumn", hc);
                    table.repaint();
                }
            };
            MouseAdapter ma = new MouseAdapter() {
                @Override
                public void mouseExited(MouseEvent e) {
                    table.putClientProperty("hoverRow", -1);
                    table.putClientProperty("hoverColumn", -1);
                    table.repaint();
                }
            };
            table.addMouseMotionListener(mma);
            table.addMouseListener(ma);
            table.putClientProperty("hoverListenerInstalled", Boolean.TRUE);
        }

        Integer hrProp = (Integer) table.getClientProperty("hoverRow");
        Integer hcProp = (Integer) table.getClientProperty("hoverColumn");
        int hr = hrProp == null ? -1 : hrProp;
        int hc = hcProp == null ? -1 : hcProp;
        boolean hover = (hr == row && hc == column);

        if (hover) {
            // Slightly darker red and thicker border to indicate hover
            setBackground(new Color(180, 30, 45));
            setBorder(BorderFactory.createLineBorder(new Color(140, 20, 35), 3));
            setFont(new Font("Verdana", Font.BOLD, 18));
        } else {
            setBackground(Color.red);
            setBorder(BorderFactory.createLineBorder(new Color(200, 35, 51), 2));
        }

        return this;
    }
    
    
    
}
