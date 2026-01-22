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


public class RenderizarBotonActualizar extends JButton implements TableCellRenderer {
    public RenderizarBotonActualizar(){
        setOpaque(true);
        setBackground(Color.blue);
        setForeground(Color.WHITE);
        setFont(new Font("Verdana", Font.BOLD, 18));
        setText("Actualizar");
        setBorder(BorderFactory.createLineBorder(new Color(0, 0, 0), 2));
        setFocusPainted(false);
    }

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
        // Ensure a hover listener is installed once per table. The listener
        // updates client properties "hoverRow" and "hoverColumn" and repaints
        // the table so renderers can read those properties for hover state.
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
            setBackground(new Color(1, 85, 230)); // slightly brighter
            setBorder(BorderFactory.createLineBorder(new Color(0, 0, 0, 70), 3));
            setFont(new Font("Verdana", Font.BOLD, 18));
        } else {
            setBackground(Color.blue);
            setBorder(BorderFactory.createLineBorder(new Color(30, 144, 255, 153), 2));
            setFont(new Font("Verdana", Font.BOLD, 18));
        }

        return this;
    }
}

