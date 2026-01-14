package Vista;

import Modelo.Libro;
import controlador.conexionSQL;
import controlador.controlLibro;
import controlador.logicaBoton;
// image loading via ImageHelper
import java.util.List;
import DAO.CategoriaDAO;
import Modelo.Categorias;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import javax.swing.table.DefaultTableModel;
import java.sql.Connection;
import javax.swing.JCheckBox;

public class EliminarLibro extends javax.swing.JFrame {
	private Connection con;

	public EliminarLibro() {
		initComponents();
		con = conexionSQL.getConnection();
		CargarLogo();
		// cargar categorias en el combo y comportamiento similar a Consultas
		cargarCategorias();
		setupCategoriaListener();
		// permitir que Enter en el campo de texto dispare el botón Buscar
		box_titulo.addActionListener(evt -> btn_buscar.doClick());
	}

	private void initComponents() {
		jPanel1 = new javax.swing.JPanel();
		jLabel1 = new javax.swing.JLabel();
		jScrollPane1 = new javax.swing.JScrollPane();
		tb_consulta = new javax.swing.JTable();
		box_titulo = new javax.swing.JTextField();
		jLabel2 = new javax.swing.JLabel();
		btn_buscar = new javax.swing.JButton();
		jComboBox1 = new javax.swing.JComboBox<>();
		btn_volver = new javax.swing.JButton();
		lbl_x = new javax.swing.JLabel();
		lbl_delete = new javax.swing.JLabel();
		lbl_curva = new javax.swing.JLabel();

		setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

		jPanel1.setBackground(new java.awt.Color(244, 226, 222));
		jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

		jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
		jLabel1.setForeground(new java.awt.Color(242, 130, 37));
		jLabel1.setText("Eliminar Libros");
		jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(397, 15, -1, -1));

		tb_consulta.setFont(new java.awt.Font("Segoe UI", 1, 16)); // NOI18N
		tb_consulta.setForeground(new java.awt.Color(0, 113, 114));
		tb_consulta.setModel(new javax.swing.table.DefaultTableModel(
			new Object [][] {
				{null, null, null, null, null, null},
				{null, null, null, null, null, null},
				{null, null, null, null, null, null},
				{null, null, null, null, null, null}
			},
			new String [] {
				"Titulo", "Autor", "Tomo", "Cantidad", "Posicion", "Accion"
			}
		) {
			Class<?>[] types = new Class<?> [] {
				java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Object.class, java.lang.String.class
			};
			boolean[] canEdit = new boolean [] {
				false, false, false, false, false, true
			};

			public Class<?> getColumnClass(int columnIndex) {
				return types [columnIndex];
			}

			public boolean isCellEditable(int rowIndex, int columnIndex) {
				return canEdit [columnIndex];
			}
		});
		tb_consulta.setColumnSelectionAllowed(true);
		jScrollPane1.setViewportView(tb_consulta);
		tb_consulta.getColumnModel().getSelectionModel().setSelectionMode(javax.swing.ListSelectionModel.SINGLE_SELECTION);
		jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(43, 112, 866, -1));

		box_titulo.setFont(new java.awt.Font("Segoe UI", 1, 14));
		jPanel1.add(box_titulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(212, 70, 395, -1));

		jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
		jLabel2.setForeground(new java.awt.Color(242, 130, 37));
		jLabel2.setText("Titulo de libro: ");
		jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(75, 66, -1, -1));

		btn_buscar.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
		btn_buscar.setForeground(new java.awt.Color(0, 113, 114));
		btn_buscar.setText("Buscar");
		btn_buscar.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				btn_buscarActionPerformed(evt);
			}
		});
		jPanel1.add(btn_buscar, new org.netbeans.lib.awtextra.AbsoluteConstraints(638, 67, 104, -1));

	jComboBox1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
	jComboBox1.setForeground(new java.awt.Color(0, 113, 114));
	jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<Modelo.Categorias>());
		jPanel1.add(jComboBox1, new org.netbeans.lib.awtextra.AbsoluteConstraints(760, 67, 106, -1));

		btn_volver.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
		btn_volver.setForeground(new java.awt.Color(0, 113, 114));
		btn_volver.setText("Volver");
		btn_volver.addActionListener(new java.awt.event.ActionListener() {
			public void actionPerformed(java.awt.event.ActionEvent evt) {
				btn_volverActionPerformed(evt);
			}
		});
		jPanel1.add(btn_volver, new org.netbeans.lib.awtextra.AbsoluteConstraints(17, 25, -1, -1));

		lbl_x.setText("jLabel3");
		jPanel1.add(lbl_x, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 0, 180, 170));

		lbl_delete.setText("jLabel3");
		jPanel1.add(lbl_delete, new org.netbeans.lib.awtextra.AbsoluteConstraints(550, 0, 180, 170));

		lbl_curva.setText("jLabel3");
		jPanel1.add(lbl_curva, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 90, 940, 470));

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
	}

	private void CargarLogo(){
		lbl_curva.setIcon(ImageHelper.getScaledIcon("/archivos/luis4.png", lbl_curva.getWidth(), lbl_curva.getHeight()));
		lbl_x.setIcon(ImageHelper.getScaledIcon("/archivos/xred.png", lbl_x.getWidth(), lbl_x.getHeight()));
		lbl_delete.setIcon(ImageHelper.getScaledIcon("/archivos/B1.png", lbl_delete.getWidth(), lbl_delete.getHeight()));
	}

	private void cargarCategorias(){
		CategoriaDAO dao = new CategoriaDAO();
		try{
			// placeholder
			jComboBox1.addItem(new Categorias(-1, "Seleccione una categoria"));
			for(Categorias c : dao.ListarCategorias()){
				jComboBox1.addItem(c);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	private void setupCategoriaListener(){
		jComboBox1.addItemListener(new ItemListener(){
			@Override
			public void itemStateChanged(ItemEvent e){
				if(e.getStateChange() == ItemEvent.SELECTED){
					Object obj = e.getItem();
					if(obj instanceof Categorias){
						Categorias c = (Categorias) obj;
						int newId = c.getId();
						if(newId <= 0) return; // placeholder
						// limpiar el campo y cargar por categoria
						box_titulo.setText("");
						cargarLibrosPorCategoria(newId);
					}
				}
			}
		});
	}

	private void cargarLibrosPorCategoria(int categoriaId){
		if(con == null){
			JOptionPane.showMessageDialog(this, "Error de conexión");
			return;
		}

		DefaultTableModel modelo = (DefaultTableModel) tb_consulta.getModel();
		modelo.setRowCount(0);

		controlLibro control = new controlLibro(con);
		List<Libro> libros = control.obtenerLibrosPorCategoria(categoriaId);

		for(Libro l : libros){
			modelo.addRow(new Object[]{
				l.getId(),
				l.getTitulo(),
				l.getAutor(),
				l.getTomo(),
				l.getN_copias(),
				l.getPosicion(),
				"eliminar"
			});
		}

		// ocultar columna id
		tb_consulta.getColumnModel().getColumn(0).setMinWidth(0);
		tb_consulta.getColumnModel().getColumn(0).setMaxWidth(0);
		tb_consulta.getColumnModel().getColumn(0).setWidth(0);

		int colBoton = tb_consulta.getColumnCount() - 1;
		// Asignar renderer y editor
		tb_consulta.getColumnModel().getColumn(colBoton).setCellRenderer(new Renderizarboton());
		tb_consulta.getColumnModel().getColumn(colBoton).setCellEditor(new logicaBoton(new JCheckBox(), tb_consulta, control));

		tb_consulta.setRowHeight(30);
	}

	private void cargarLibros(){

		if (con == null) {
			JOptionPane.showMessageDialog(this, "Error de conexión");
			return;
		}

		String Titulo = box_titulo.getText().trim();

		DefaultTableModel modelo = (DefaultTableModel) tb_consulta.getModel();
		modelo.setRowCount(0);

		controlLibro control = new controlLibro(con);
		List<Libro> libros = control.obtenerLibros(Titulo);

		for (Libro l : libros) {
			modelo.addRow(new Object[]{
				l.getId(),
				l.getTitulo(),
				l.getAutor(),
				l.getTomo(),
				l.getN_copias(),
				l.getPosicion(),
				"eliminar"
			});
		}

		//oculta la columna id para pasarla al boton eliminar
		tb_consulta.getColumnModel().getColumn(0).setMinWidth(0);
		tb_consulta.getColumnModel().getColumn(0).setMaxWidth(0);
		tb_consulta.getColumnModel().getColumn(0).setWidth(0);

		int colBoton = tb_consulta.getColumnCount() - 1;

		// Asignar renderer y editor
		tb_consulta.getColumnModel().getColumn(colBoton).setCellRenderer(new Renderizarboton());
		tb_consulta.getColumnModel().getColumn(colBoton).setCellEditor(new logicaBoton(new JCheckBox(), tb_consulta,control));

		tb_consulta.setRowHeight(30);
	}

	private void btn_volverActionPerformed(java.awt.event.ActionEvent evt) {
		MenuPrincipal menu = new MenuPrincipal();
		menu.setLocationRelativeTo(null);
		menu.setVisible(true);

		this.dispose();
	}

	private void btn_buscarActionPerformed(java.awt.event.ActionEvent evt) {
		cargarLibros();
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
	private javax.swing.JComboBox<Modelo.Categorias> jComboBox1;
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
