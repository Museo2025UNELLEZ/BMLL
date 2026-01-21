/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.awt.Component;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
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
public class logicaBoton extends DefaultCellEditor {
    
    private JButton boton;
    private JTable tabla;
    private int row;
    private Connection conexion;
    private controlLibro controlLibro; // Solo para libros
    private Runnable onDeleted;
    private String tipoEntidad; // "libro", "categoria", "estanteria"
    
    public logicaBoton(JCheckBox checkBox, JTable tabla, controlLibro controlLibro, String tipoEntidad) {
        super(checkBox);
        this.tabla = tabla;
        this.controlLibro = controlLibro;
        this.tipoEntidad = tipoEntidad;
        
        boton = new JButton("Eliminar");
        boton.addActionListener(e -> fireEditingStopped());
    }

    public logicaBoton(JCheckBox checkBox, JTable tabla, String tipoEntidad) {
        super(checkBox);
        this.tabla = tabla;
        this.tipoEntidad = tipoEntidad;
        
        boton = new JButton("Eliminar");
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
            String nombreEntidad = "";
            switch (tipoEntidad.toLowerCase()) {
                case "libro": nombreEntidad = "libro"; break;
                case "categoria": nombreEntidad = "categoría"; break;
                case "estanteria": nombreEntidad = "estantería"; break;
            }
            
            int opcion = JOptionPane.showConfirmDialog(tabla, 
                "¿Seguro que deseas eliminar este " + nombreEntidad + "?", 
                "Confirmar eliminación", 
                JOptionPane.YES_NO_OPTION);
            
            if (opcion == JOptionPane.YES_OPTION) {
                if (tabla.getColumnCount() > 0 && row >= 0 && row < tabla.getRowCount()) {
                    Object val = tabla.getValueAt(row, 0);
                    Integer id = null;
                    // Try the table cell first
                    if (val instanceof Number) {
                        id = ((Number) val).intValue();
                    } else if (val instanceof String) {
                        try {
                            id = Integer.parseInt((String) val);
                        } catch (NumberFormatException nfe) {
                            id = null;
                        }
                    }
                    // Fallback: try the rowIds client property (keeps visual columns as designed)
                    if (id == null) {
                        Object prop = tabla.getClientProperty("rowIds");
                        if (prop instanceof List) {
                            List<?> ids = (List<?>) prop;
                            if (row >= 0 && row < ids.size()) {
                                Object rid = ids.get(row);
                                if (rid instanceof Number) {
                                    id = ((Number) rid).intValue();
                                } else if (rid instanceof String) {
                                    try { id = Integer.parseInt((String) rid); } catch (NumberFormatException ex) { id = null; }
                                }
                            }
                        }
                    }

                    if (id == null) {
                        JOptionPane.showMessageDialog(tabla, "No se pudo obtener el ID del libro (valor inválido)", "Error", JOptionPane.ERROR_MESSAGE);
                        return null;
                    }
                    
                    boolean eliminado = false;
                    String mensajeExito = "";
                    String mensajeError = "";
                    
                    switch (tipoEntidad.toLowerCase()) {
                        case "libro":
                            if (controlLibro != null) {
                                int resultado = controlLibro.eliminarPorId(id);
                                eliminado = resultado > 0;
                                mensajeExito = "El libro fue eliminado EXITOSAMENTE";
                                mensajeError = "Hubo un error y no se pudo eliminar el libro seleccionado";
                            }
                            break;
                            
                        case "categoria":
                            eliminado = eliminarCategoria(id);
                            mensajeExito = "La categoría fue eliminada EXITOSAMENTE";
                            mensajeError = "Hubo un error y no se pudo eliminar la categoría seleccionada";
                            break;
                            
                        case "estanteria":
                            eliminado = eliminarEstanteria(id);
                            mensajeExito = "La estantería fue eliminada EXITOSAMENTE";
                            mensajeError = "Hubo un error y no se pudo eliminar la estantería seleccionada";
                            break;
                            
                        default:
                            JOptionPane.showMessageDialog(tabla, 
                                "Tipo de entidad no soportado: " + tipoEntidad, 
                                "Error", JOptionPane.ERROR_MESSAGE);
                            return null;
                    }
                    
                    if (eliminado) {
                        JOptionPane.showMessageDialog(tabla, mensajeExito, "ÉXITO", JOptionPane.INFORMATION_MESSAGE);
                        ((DefaultTableModel) tabla.getModel()).removeRow(row);
                        // also remove the id from the rowIds list if present so indices stay aligned
                        Object prop = tabla.getClientProperty("rowIds");
                        if (prop instanceof List) {
                            try {
                                ((List) prop).remove(row);
                            } catch (Exception ignore) {}
                        }
                        // ejecutar callback opcional después de eliminar para que la UI pueda reaccionar
                        if (onDeleted != null) {
                            try { onDeleted.run(); } catch (Exception ex) { }
                        }
                    } else {
                        JOptionPane.showMessageDialog(tabla, mensajeError, "Error", JOptionPane.ERROR_MESSAGE);
                    }
                }
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(tabla, 
                "Error al intentar eliminar: " + ex.getMessage(), 
                "Error", JOptionPane.ERROR_MESSAGE);
        }
        return null;
    }
    
    private boolean eliminarCategoria(int id) {
        try {
            
            conexion = conexionSQL.getConnection();
            
            // Eliminar la categoría
            String sqlDelete = "DELETE FROM categorias WHERE id = ?";
            try (PreparedStatement ps = conexion.prepareStatement(sqlDelete)) {
                ps.setInt(1, id);
                int affectedRows = ps.executeUpdate();
                return affectedRows > 0;
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(tabla, 
                "Error al eliminar categoría: " + ex.getMessage(), 
                "Error", JOptionPane.ERROR_MESSAGE);
            return false;
        }
    }
    
    private boolean eliminarEstanteria(int id) {
        try {
            
            conexion = conexionSQL.getConnection();


            // Eliminar la estantería
            String sqlDelete = "DELETE FROM estanterias WHERE id = ?";
            try (PreparedStatement ps = conexion.prepareStatement(sqlDelete)) {
                ps.setInt(1, id);
                int affectedRows = ps.executeUpdate();
                return affectedRows > 0;
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(tabla, 
                "Error al eliminar estantería: " + ex.getMessage(), 
                "Error", JOptionPane.ERROR_MESSAGE);
            return false;
        }
    }
}