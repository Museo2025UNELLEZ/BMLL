package controlador;

import Modelo.Categorias;
//import Modelo.Estanteria;
import Modelo.Libro;
import Vista.ActualizarCategoria;
import Vista.ActualizarEstanteria;
//import Vista.ActualizarEstanteria;
import Vista.ActualizarLibro;
import java.awt.Color;
import java.awt.Component;
import java.awt.Window;
import javax.swing.DefaultCellEditor;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.SwingUtilities;

public class LogicaBotonActualizar extends DefaultCellEditor {
    private JButton boton;
    private JTable tabla;
    private int row;
    private Object controlador; // Puede ser controlLibro o null
    private String tipoEntidad; // "libro", "categoria", "estanteria"

    // Constructor para Libros (con controlador)
    public LogicaBotonActualizar(JCheckBox checkBox, JTable tabla, controlLibro control) {
        super(checkBox);
        this.tabla = tabla;
        this.controlador = control;
        this.tipoEntidad = "libro";
        inicializarBoton();
    }

    // Constructor para Categorías/Estanterías (sin controlador)
    public LogicaBotonActualizar(JCheckBox checkBox, JTable tabla, String tipoEntidad) {
        super(checkBox);
        this.tabla = tabla;
        this.controlador = null;
        this.tipoEntidad = tipoEntidad;
        inicializarBoton();
    }

    private void inicializarBoton() {
        boton = new JButton("Actualizar");
        boton.setBackground(Color.blue);
        boton.setForeground(Color.WHITE);
        boton.addActionListener(e -> fireEditingStopped());
    }

    @Override
    public Component getTableCellEditorComponent(JTable table, Object value, 
                                                 boolean isSelected, int row, int column) {
        this.row = row;
        return boton;
    }

    @Override
    public Object getCellEditorValue() {
        try {
            // If the table stores the real IDs in a client property (pattern used in BuscarLibroActualizar), use it.
            Object idsProp = tabla.getClientProperty("rowIds");
            Object idObj = null;
            if (idsProp instanceof java.util.List) {
                try {
                    java.util.List<?> ids = (java.util.List<?>) idsProp;
                    if (row >= 0 && row < ids.size()) {
                        Object stored = ids.get(row);
                        if (stored instanceof Number) {
                            idObj = stored;
                        } else if (stored != null) {
                            String s = stored.toString().trim();
                            try {
                                Integer.parseInt(s);
                                idObj = s;
                            } catch (NumberFormatException ignore) {
                                // ignore and fall back to visible columns
                            }
                        }
                    }
                } catch (Exception ignore) {
                    // fall back to scanning visible columns below
                }
            }

            // If we didn't find an ID in the hidden list, fall back to scanning visible columns.
            if (idObj == null) {
                // Robust ID extraction: don't assume column 0 contains the numeric ID.
                // Try column 0 first, then scan other columns for a Number or a parsable integer string.
                try {
                    Object cand = tabla.getValueAt(row, 0);
                    if (cand instanceof Number) {
                        idObj = cand;
                    } else if (cand != null) {
                        String s = cand.toString().trim();
                        try {
                            // If it's numeric text, keep it
                            Integer.parseInt(s);
                            idObj = s;
                        } catch (NumberFormatException ignore) {
                            // not numeric, will scan below
                        }
                    }
                } catch (Exception ignore) {
                    // ignore and scan columns
                }

                if (idObj == null) {
                    for (int c = 0; c < tabla.getColumnCount(); c++) {
                        try {
                            Object cand = tabla.getValueAt(row, c);
                            if (cand == null) continue;
                            if (cand instanceof Number) {
                                idObj = cand;
                                break;
                            }
                            String s = cand.toString().trim();
                            if (s.length() == 0) continue;
                            try {
                                Integer.parseInt(s);
                                idObj = s;
                                break;
                            } catch (NumberFormatException ignore) {
                                // not numeric, continue scanning
                            }
                        } catch (Exception ignore) {
                            // continue scanning
                        }
                    }
                }
            }

            if (idObj == null) {
                mostrarError("No se encontró un ID numérico en la fila seleccionada. Asegúrese de que la tabla incluya la columna ID.");
                return null;
            }

            int id;
            if (idObj instanceof Number) {
                id = ((Number) idObj).intValue();
            } else {
                id = Integer.parseInt(idObj.toString());
            }

            // Obtener datos de búsqueda previos (si existen)
            String prevSearch = null;
            Window parentWindow = SwingUtilities.getWindowAncestor(tabla);

            if (parentWindow != null) {
                // Guardar el estado de búsqueda antes de cerrar
                prevSearch = obtenerBusquedaPrevia(parentWindow);

                // Cerrar ventana actual
                parentWindow.dispose();
            }

            // Procesar según el tipo de entidad
            switch (tipoEntidad) {
                case "libro":
                    procesarLibro(id, prevSearch);
                    break;
                case "categoria":
                    procesarCategoria(id, prevSearch);
                    break;
                case "estanteria":
                    procesarEstanteria(id, prevSearch);
                    break;
            }

        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(tabla,
                    "Error al procesar la acción: " + e.getMessage(),
                    "Error", JOptionPane.ERROR_MESSAGE);
        }

        return null;
    }
    
    private String obtenerBusquedaPrevia(Window parentWindow) {
        // Intentar obtener búsqueda previa según el tipo de ventana
        try {
            if (parentWindow instanceof Vista.BuscarLibroActualizar) {
                return ((Vista.BuscarLibroActualizar) parentWindow).getCurrentSearchTitle();
            } else if (parentWindow instanceof Vista.BuscarCategoriaActualizar) {
                return ((Vista.BuscarCategoriaActualizar) parentWindow).getCurrentSearchTitle();
            } else if (parentWindow instanceof Vista.BuscarEstanteriaActualizar) {
                return ((Vista.BuscarEstanteriaActualizar) parentWindow).getCurrentSearchTitle();
            }
        } catch (Exception e) {
            // Si falla, simplemente retornar null
        }
        return null;
    }
    
    private void procesarLibro(int id, String prevSearch) {
        if (controlador != null && controlador instanceof controlLibro) {
            controlLibro control = (controlLibro) controlador;
            Libro libro = control.obtenerLibroPorId(id);
            
            if (libro != null) {
                // Obtener categoría seleccionada previa
                int prevCategoryId = -1;
                Window parentWindow = SwingUtilities.getWindowAncestor(tabla);
                if (parentWindow instanceof Vista.BuscarLibroActualizar) {
                    prevCategoryId = ((Vista.BuscarLibroActualizar) parentWindow)
                                     .getCurrentSelectedCategoryId();
                }
                
                ActualizarLibro ventana = new ActualizarLibro(control, libro, 
                                                             prevSearch, prevCategoryId);
                ventana.setLocationRelativeTo(null);
                ventana.setVisible(true);
            } else {
                mostrarError("No se pudo cargar el libro");
            }
        }
    }
    
    private void procesarCategoria(int id, String prevSearch) {
        try {
            // Obtener datos directamente de la tabla
            String nombre = tabla.getValueAt(row, 1).toString();
            
            // Crear objeto Categoria con datos básicos
            Categorias categoria = new Categorias(id, nombre);
            
            // Abrir ventana de actualización
            ActualizarCategoria ventana = new ActualizarCategoria(categoria, id);
            ventana.setLocationRelativeTo(null);
            ventana.setVisible(true);
            
        } catch (Exception e) {
            e.printStackTrace();
            mostrarError("Error al cargar la categoría: " + e.getMessage());
        }
    }
    
    private void procesarEstanteria(int id, String prevSearch) {
    try {
        // Validar que la fila existe
        if (row < 0 || row >= tabla.getRowCount()) {
            mostrarError("Fila no válida");
            return;
        }
        
        // Obtener datos con validaciones
        Object codigoObj = tabla.getValueAt(row, 1);
        Object nFilasObj = tabla.getValueAt(row, 2);
        
        if (codigoObj == null || nFilasObj == null) {
            mostrarError("Datos incompletos de la estantería");
            return;
        }
        
        // Crear array con datos
        Object[] estanteria = new Object[4];
        estanteria[0] = id;
        estanteria[1] = codigoObj.toString();
        estanteria[2] = nFilasObj.toString();
        
        // Manejar capacidad
        if (tabla.getColumnCount() > 3) {
            Object capacidadObj = tabla.getValueAt(row, 3);
            if (capacidadObj != null) {
                try {
                    estanteria[3] = Integer.parseInt(capacidadObj.toString());
                } catch (NumberFormatException e) {
                    estanteria[3] = 0; // Valor por defecto
                }
            } else {
                estanteria[3] = 0; // Valor por defecto
            }
        } else {
            estanteria[3] = 0; // Valor por defecto si no hay columna
        }
        
        // Abrir ventana
        ActualizarEstanteria ventana = new ActualizarEstanteria(estanteria, id);
        ventana.setLocationRelativeTo(null);
        ventana.setVisible(true);
        
    } catch (Exception e) {
        e.printStackTrace();
        mostrarError("Error al procesar la estantería: " + e.getMessage());
    }
}
    
    private void mostrarError(String mensaje) {
        JOptionPane.showMessageDialog(tabla, mensaje, "Error", 
                                     JOptionPane.ERROR_MESSAGE);
    }
}