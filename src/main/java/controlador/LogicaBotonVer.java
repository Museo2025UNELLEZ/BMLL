package controlador;

import Modelo.Libro;
import Vista.DatosLibro;
import java.awt.Color;
import java.awt.Component;
import java.awt.Window;
import javax.swing.DefaultCellEditor;
import javax.swing.JCheckBox;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.SwingUtilities;

/**
 * Editor que abre la ventana ActualizarLibro en modo sólo lectura (bloqueado).
 */
public class LogicaBotonVer extends DefaultCellEditor {
    private JButton boton;
    private JTable tabla;
    private int row;
    private controlLibro control;

    public LogicaBotonVer(JCheckBox checkBox, JTable tabla, controlLibro control){
        super(checkBox);
        this.tabla = tabla;
        this.control = control;

        boton = new JButton("Ver");
        boton.setBackground(new Color(34, 139, 34));
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
            Object val = tabla.getValueAt(row, 0);
            int id;
            if (val instanceof Number) {
                id = ((Number) val).intValue();
            } else if (val != null) {
                id = Integer.parseInt(val.toString());
            } else {
                throw new IllegalStateException("ID de libro nulo en la tabla");
            }

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

                // Abrir la ventana de datos de libro (solo lectura)
                DatosLibro ventana = new DatosLibro(control, libro, prevTitle, prevCategoryId);
                ventana.setLocationRelativeTo(null);
                ventana.setVisible(true);
            } else {
                JOptionPane.showMessageDialog(tabla,"No se pudo cargar el libro","Error",JOptionPane.ERROR_MESSAGE);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(tabla, "Error al procesar la fila: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }

        return null;
    }
}
