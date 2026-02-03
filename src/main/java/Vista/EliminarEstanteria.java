package Vista;

import Modelo.Libro;
import controlador.conexionSQL;
import controlador.controlLibro;
import controlador.logicaBoton;
// image loading via ImageHelper
import java.util.List;
import DAO.CategoriaDAO;
import Modelo.Categorias;
import controlador.LogicaBotonActualizar;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.Component;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import javax.swing.DefaultListCellRenderer;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import javax.swing.table.DefaultTableModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.AbstractAction;
import javax.swing.JCheckBox;
import javax.swing.JComponent;
import javax.swing.KeyStroke;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;

public class EliminarEstanteria extends javax.swing.JFrame {
	private Connection con;

	public EliminarEstanteria() {
		initComponents();
		con = conexionSQL.getConnection();
		// cargar categorias en el combo y comportamiento similar a Consultas
		cargarEstanteria();
		// permitir que Enter en el campo de texto dispare el botón Buscar
		box_titulo.addActionListener(evt -> btn_buscar.doClick());
                
                tb_consulta.getTableHeader().setFont(new Font("Verdana", Font.BOLD, 16));
                
                DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
                centerRenderer.setHorizontalAlignment(SwingConstants.CENTER);
        
                tb_consulta.getColumnModel().getColumn(1).setCellRenderer(centerRenderer);
                
                getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
                .put(KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "volver");
                getRootPane().getActionMap().put("volver", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Reuse the generated action handler so behavior stays in one place
                btn_volverActionPerformed(new ActionEvent(EliminarEstanteria.this, ActionEvent.ACTION_PERFORMED, "escape"));
            }
        });
                
	}

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tb_consulta = new javax.swing.JTable();
        box_titulo = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        btn_buscar = new javax.swing.JButton();
        btn_volver = new javax.swing.JButton();
        lbl_x = new javax.swing.JLabel();
        lbl_curva = new javax.swing.JLabel();
        lbl_delete = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(244, 226, 222));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Verdana", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(242, 130, 37));
        jLabel1.setText("Eliminar Estanteria");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 10, -1, -1));

        tb_consulta.setBackground(new java.awt.Color(255, 255, 255));
        tb_consulta.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        tb_consulta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "Id", "Nombre", "accion"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, true
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tb_consulta.setColumnSelectionAllowed(true);
        tb_consulta.setShowHorizontalLines(true);
        jScrollPane1.setViewportView(tb_consulta);
        tb_consulta.getColumnModel().getSelectionModel().setSelectionMode(javax.swing.ListSelectionModel.SINGLE_SELECTION);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 130, 1250, 560));

        box_titulo.setFont(new java.awt.Font("Verdana", 0, 18)); // NOI18N
        jPanel1.add(box_titulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 80, 590, -1));

        jLabel2.setFont(new java.awt.Font("Verdana", 1, 24)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(242, 130, 37));
        jLabel2.setText("Nombre: ");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 60, -1, 60));

        btn_buscar.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        btn_buscar.setForeground(new java.awt.Color(0, 113, 114));
        btn_buscar.setText("Buscar");
        btn_buscar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_buscarActionPerformed(evt);
            }
        });
        jPanel1.add(btn_buscar, new org.netbeans.lib.awtextra.AbsoluteConstraints(810, 80, 490, 30));

        btn_volver.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        btn_volver.setForeground(new java.awt.Color(0, 113, 114));
        btn_volver.setText("Volver");
        btn_volver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_volverActionPerformed(evt);
            }
        });
        jPanel1.add(btn_volver, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 90, 50));
        jPanel1.add(lbl_x, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 0, 340, 200));
        jPanel1.add(lbl_curva, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 270, 1360, 450));
        jPanel1.add(lbl_delete, new org.netbeans.lib.awtextra.AbsoluteConstraints(860, 0, 360, 170));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

	private void cargarEstanteria(){
 
        if (con == null) {
            JOptionPane.showMessageDialog(this, "Error de conexión");
            return;
        }
        
        String Titulo = box_titulo.getText().trim();
        
        // usar la instancia del controlador creada en el constructor
        List lista = new ArrayList<>();

    StringBuilder sql = new StringBuilder(
        "SELECT id, codigo, n_filas FROM estanterias"
    ); // Cambio de la sentencia sql para incluir el codigo del estante con la fila

    // Buscar/filtrar por titulo y limita los resultados a 50
    
    if (Titulo != null && !Titulo.trim().isEmpty()) {
        sql.append(" WHERE codigo LIKE ?");
    } 

    try (PreparedStatement ps = con.prepareStatement(sql.toString())) {
        if (Titulo != null && !Titulo.trim().isEmpty()) {
            ps.setString(1, "%" + Titulo + "%");
        }

        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {    
                Object[] estanteria = new Object[3]; // o el número de columnas que necesites
                estanteria[0] = rs.getInt("id");
                estanteria[1] = rs.getString("codigo");
                estanteria[2] = rs.getString("n_filas");
                lista.add(estanteria);
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
        actualizarTabla(lista);
    }

        private void actualizarTabla(List<Object[]> estanterias) {
    DefaultTableModel modelo = (DefaultTableModel) tb_consulta.getModel();
    modelo.setRowCount(0);

    if (estanterias == null || estanterias.isEmpty()) {
        return;
    }

    for (Object[] estanteria : estanterias) {
        modelo.addRow(new Object[]{
            estanteria[0],  // id
            estanteria[1],  // codigo
            estanteria[2],  // ubicacion
            "Actualizar"
        });
    }

    // Ocultar columna id
    if (tb_consulta.getColumnModel().getColumnCount() > 0) {
        tb_consulta.getColumnModel().getColumn(0).setMinWidth(0);
        tb_consulta.getColumnModel().getColumn(0).setMaxWidth(0);
        tb_consulta.getColumnModel().getColumn(0).setWidth(0);
    }

    int colBoton = tb_consulta.getColumnCount() - 1;
    // Asignar renderer y editor para botón actualizar
    tb_consulta.getColumnModel().getColumn(colBoton).setCellRenderer(new Renderizarboton());
    tb_consulta.getColumnModel().getColumn(colBoton).setCellEditor(new logicaBoton(new JCheckBox(), tb_consulta, "estanteria"));

    tb_consulta.setRowHeight(30);
}
    
        
	private void btn_volverActionPerformed(java.awt.event.ActionEvent evt) {
		MenuPrincipal menu = new MenuPrincipal();
		menu.setLocationRelativeTo(null);
		menu.setVisible(true);

		this.dispose();
	}

	private void btn_buscarActionPerformed(java.awt.event.ActionEvent evt) {
		cargarEstanteria();
	}

	public static void main(String args[]) {
		try {
			for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
				if ("Nimbus".equals(info.getName())) {
					javax.swing.UIManager.setLookAndFeel(info.getClassName());
					break;
				}
			}
		} catch (Exception ex) {
			java.util.logging.Logger.getLogger(EliminarLibro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
		}

		java.awt.EventQueue.invokeLater(new Runnable() {
			public void run() {
				new EliminarLibro().setVisible(true);
			}
		});
	}

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField box_titulo;
    private javax.swing.JButton btn_buscar;
    private javax.swing.JButton btn_volver;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbl_curva;
    private javax.swing.JLabel lbl_delete;
    private javax.swing.JLabel lbl_x;
    private javax.swing.JTable tb_consulta;
    // End of variables declaration//GEN-END:variables

	public void open() {
		SwingUtilities.invokeLater(() -> setVisible(true));
	}
}
