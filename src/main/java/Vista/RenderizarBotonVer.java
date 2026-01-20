package Vista;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;

/**
 * Renderer para el botón "Ver" en la tabla (color verde).
 */
public class RenderizarBotonVer extends JButton implements TableCellRenderer {
    public RenderizarBotonVer(){
        setOpaque(true);
        setBackground(new Color(34, 139, 34)); // forest green
        setForeground(Color.WHITE);
        setFont(new Font("Segoe UI", Font.BOLD, 12));
        setText("Ver");
        setBorder(BorderFactory.createLineBorder(new Color(60, 179, 113), 2, true));
        setFocusPainted(false);
    }

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
        return this;
    }
}
