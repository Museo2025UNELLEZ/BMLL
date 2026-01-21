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


public class RenderizarBotonVer extends JButton implements TableCellRenderer {
    public RenderizarBotonVer(){
        setOpaque(true);
        setBackground(new Color(34, 139, 34)); // forest green
        setForeground(Color.WHITE);
        setFont(new Font("Verdana", Font.BOLD, 18));
        setText("Ver");
        setBorder(BorderFactory.createLineBorder(new Color(60, 179, 113), 2, true));
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
            setBackground(new Color(24, 120, 24));
            setBorder(BorderFactory.createLineBorder(new Color(20, 100, 20), 3, true));
        } else {
            setBackground(new Color(34, 139, 34));
            setBorder(BorderFactory.createLineBorder(new Color(60, 179, 113), 2, true));
        }

        return this;
    }
}
