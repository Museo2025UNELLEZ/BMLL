/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista.Vista_copia;
import com.toedter.calendar.JCalendar;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Component;
import java.awt.Font;
import java.awt.Dimension;
import com.toedter.calendar.JDateChooser;
import controlador.conexionSQL;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.swing.DefaultComboBoxModel;   
import java.sql.Connection;               
import java.sql.Statement;                
import java.sql.ResultSet;                
import java.sql.SQLException;
import javax.swing.JComboBox;
import javax.swing.JSpinner;
import javax.swing.UIManager;
import javax.swing.JComponent;



/**
 *
 * @author luise
 */
public class AgregarLibro extends javax.swing.JFrame {
    private Connection con;
    
    private JDateChooser dateChooser;
    
  
    public AgregarLibro() {
        initComponents();
        jDayChooser1.setVisible(false);
        jMonthChooser3.setVisible(false);
        jYearChooser1.setVisible(false);
        jButtonFecha.addActionListener(e -> {
            boolean visible = !jYearChooser1.isVisible();
            jYearChooser1.setVisible(visible);
            jMonthChooser3.setVisible(visible);
            jDayChooser1.setVisible(visible);
        });
        // Método para actualizar el campo de texto
        Runnable actualizar = () -> {
        int year = jYearChooser1.getYear();
        int month = jMonthChooser3.getMonth() + 1; // MonthChooser empieza en 0
        int day = jDayChooser1.getDay();
        jTextFieldFecha.setText(
            String.format("%04d-%02d-%02d", year, month, day)
    );
};

// Listeners
jYearChooser1.addPropertyChangeListener("year", e -> actualizar.run());
jMonthChooser3.addPropertyChangeListener("month", e -> actualizar.run());
jDayChooser1.addPropertyChangeListener("day", e -> actualizar.run());


        /*Jcalendar funcional y codigo para Ajustar el tamaño de la interfaz del calendario, pero sin poder ajustar el tamaño del combobox
        año y fecha. para volver a usarlo solo quitar los "/*" del comentario
        UIManager.put("ComboBox.font", new Font("SansSerif", Font.PLAIN, 16));
        UIManager.put("Spinner.font", new Font("SansSerif", Font.PLAIN, 16));
        UIManager.put("ComboBox.minimumSize", new Dimension(150, 35));
        UIManager.put("Spinner.minimumSize", new Dimension(100, 35));/*
        initComponents();
        dateChooser = new JDateChooser();
        dateChooser.setDateFormatString("yyyy-MM-dd");
        jPanel1.add(dateChooser, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 250, 250, 30));
        JTextField editor = (JTextField) dateChooser.getDateEditor().getUiComponent();
        editor.setFont(new Font("SansSerif", Font.PLAIN, 16));
        editor.setPreferredSize(new Dimension(150, 30));
        for (Component comp : dateChooser.getComponents()) {
            if (comp instanceof JButton) {
                JButton boton = (JButton) comp;
                boton.setPreferredSize(new Dimension(30, 30));
            }    
        }
        JCalendar calendario = dateChooser.getJCalendar();
        calendario.setFont(new Font("SansSerif", Font.PLAIN, 16));
        calendario.setPreferredSize(new Dimension(350, 300));
        JComboBox<?> comboMes = (JComboBox<?>)calendario.getMonthChooser().getComboBox();
        comboMes.setFont(new Font("SansSerif", Font.PLAIN, 16));
        comboMes.setPreferredSize(new Dimension(120, 30));
        Component compAnio = calendario.getYearChooser().getSpinner();
        if (compAnio instanceof JSpinner) {
            JSpinner spinnerAnio = (JSpinner) compAnio;
            spinnerAnio.setFont(new Font("SansSerif", Font.PLAIN, 16));
            JComponent editorAnio = spinnerAnio.getEditor();
            if (editorAnio instanceof JSpinner.DefaultEditor) {
                JTextField tf = ((JSpinner.DefaultEditor) editorAnio).getTextField();
                tf.setFont(new Font("SansSerif", Font.PLAIN, 16));
                tf.setPreferredSize(new Dimension(100, 35)); 
            }
        }*/
       
        
  
        try {
            con = conexionSQL.getConnection();
        
            DefaultComboBoxModel<String> modeloCategorias = new DefaultComboBoxModel<>();
            Statement stCat = con.createStatement();
            ResultSet rsCat = stCat.executeQuery("SELECT nombre FROM categorias");
            while (rsCat.next()) {
                modeloCategorias.addElement(rsCat.getString("nombre"));
            }
            jComboBoxCategorias.setModel(modeloCategorias);
            rsCat.close();
            stCat.close();
            
            DefaultComboBoxModel<String> modeloEstanterias = new DefaultComboBoxModel<>();
            Statement stEst = con.createStatement();
            ResultSet rsEst = stEst.executeQuery("SELECT codigo FROM estanterias");
            while (rsEst.next()) {
                modeloEstanterias.addElement(rsEst.getString("codigo"));
            }
            jComboBoxEstanterias.setModel(modeloEstanterias);
            rsEst.close();
            stEst.close();
        } catch (SQLException e) {
            e.printStackTrace();
            javax.swing.JOptionPane.showMessageDialog(this, "Error al cargar combos: " + e.getMessage());
        }    
        
        
        
        
      
        
      
         
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jComboBoxEstanterias = new javax.swing.JComboBox<>();
        jLabel6 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldFila = new javax.swing.JTextField();
        jTextFieldNombre = new javax.swing.JTextField();
        jTextFieldEditorial = new javax.swing.JTextField();
        jTextFieldISBN = new javax.swing.JTextField();
        jTextFieldTomo = new javax.swing.JTextField();
        jTextFieldEdicion = new javax.swing.JTextField();
        jTextFieldAutor = new javax.swing.JTextField();
        jTextFieldCopias = new javax.swing.JTextField();
        jComboBoxCategorias = new javax.swing.JComboBox<>();
        btn_volver = new javax.swing.JButton();
        jTextFieldCodigo = new javax.swing.JTextField();
        jTextField11 = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jDayChooser1 = new com.toedter.calendar.JDayChooser();
        jTextFieldFecha = new javax.swing.JTextField();
        jMonthChooser3 = new com.toedter.calendar.JMonthChooser();
        jYearChooser1 = new com.toedter.calendar.JYearChooser();
        jButtonFecha = new javax.swing.JButton();
        jLabel13 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(244, 226, 222));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 38)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(242, 130, 37));
        jLabel1.setText("Agregar Libro");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 10, -1, -1));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(242, 130, 37));
        jLabel2.setText("Numero de copias");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 150, -1, 30));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(242, 130, 37));
        jLabel3.setText("Editorial");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 150, -1, -1));

        jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(242, 130, 37));
        jLabel4.setText("Codigo ID");
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 290, -1, -1));

        jComboBoxEstanterias.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jComboBoxEstanterias.setForeground(new java.awt.Color(0, 113, 114));
        jComboBoxEstanterias.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "ESTANTERIA", " " }));
        jComboBoxEstanterias.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBoxEstanteriasActionPerformed(evt);
            }
        });
        jPanel1.add(jComboBoxEstanterias, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 430, 320, 40));

        jLabel6.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(242, 130, 37));
        jLabel6.setText("Autor");
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 80, 70, -1));

        jLabel8.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(242, 130, 37));
        jLabel8.setText("Fila");
        jPanel1.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 480, -1, -1));

        jLabel9.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(242, 130, 37));
        jLabel9.setText("Fecha de publicacion");
        jPanel1.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 440, -1, 30));

        jButton1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jButton1.setForeground(new java.awt.Color(0, 113, 114));
        jButton1.setText("Guardar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 625, 260, -1));

        jLabel5.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(242, 130, 37));
        jLabel5.setText("Edicion");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 220, -1, -1));

        jTextFieldFila.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTextFieldFila.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldFilaActionPerformed(evt);
            }
        });
        jPanel1.add(jTextFieldFila, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 510, 320, -1));

        jTextFieldNombre.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTextFieldNombre.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldNombreActionPerformed(evt);
            }
        });
        jPanel1.add(jTextFieldNombre, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 110, 320, -1));

        jTextFieldEditorial.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTextFieldEditorial.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldEditorialActionPerformed(evt);
            }
        });
        jPanel1.add(jTextFieldEditorial, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 180, 320, -1));

        jTextFieldISBN.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTextFieldISBN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldISBNActionPerformed(evt);
            }
        });
        jPanel1.add(jTextFieldISBN, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 250, 320, -1));

        jTextFieldTomo.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jPanel1.add(jTextFieldTomo, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 320, 320, -1));

        jTextFieldEdicion.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTextFieldEdicion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldEdicionActionPerformed(evt);
            }
        });
        jPanel1.add(jTextFieldEdicion, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 250, 320, -1));

        jTextFieldAutor.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jPanel1.add(jTextFieldAutor, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 110, 320, -1));

        jTextFieldCopias.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jPanel1.add(jTextFieldCopias, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 180, 320, -1));

        jComboBoxCategorias.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jComboBoxCategorias.setForeground(new java.awt.Color(0, 113, 114));
        jComboBoxCategorias.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "CATEGORIAS", " " }));
        jPanel1.add(jComboBoxCategorias, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 370, 320, 40));

        btn_volver.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        btn_volver.setForeground(new java.awt.Color(0, 113, 114));
        btn_volver.setText("Volver");
        btn_volver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_volverActionPerformed(evt);
            }
        });
        jPanel1.add(btn_volver, new org.netbeans.lib.awtextra.AbsoluteConstraints(550, 625, 260, -1));

        jTextFieldCodigo.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTextFieldCodigo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldCodigoActionPerformed(evt);
            }
        });
        jPanel1.add(jTextFieldCodigo, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 320, 320, -1));

        jTextField11.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jTextField11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField11ActionPerformed(evt);
            }
        });
        jPanel1.add(jTextField11, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 390, 320, -1));

        jLabel12.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(242, 130, 37));
        jLabel12.setText("Posicion");
        jLabel12.setToolTipText("");
        jPanel1.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 360, -1, -1));
        jPanel1.add(jDayChooser1, new org.netbeans.lib.awtextra.AbsoluteConstraints(790, 440, 180, 120));

        jTextFieldFecha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldFechaActionPerformed(evt);
            }
        });
        jPanel1.add(jTextFieldFecha, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 530, 130, 30));
        jPanel1.add(jMonthChooser3, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 480, 130, 30));
        jPanel1.add(jYearChooser1, new org.netbeans.lib.awtextra.AbsoluteConstraints(590, 480, 129, 30));

        jButtonFecha.setText("jButton3");
        jPanel1.add(jButtonFecha, new org.netbeans.lib.awtextra.AbsoluteConstraints(590, 530, 129, 30));

        jLabel13.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(242, 130, 37));
        jLabel13.setText("Titulo");
        jPanel1.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 80, -1, -1));

        jLabel11.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(242, 130, 37));
        jLabel11.setText("ISBN");
        jPanel1.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 220, -1, -1));

        jLabel10.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(242, 130, 37));
        jLabel10.setText("Tomo");
        jPanel1.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 290, -1, -1));

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

    private void btn_volverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_volverActionPerformed
        // TODO add your handling code here:
        
        MenuPrincipal menu = new MenuPrincipal();
        menu.setLocationRelativeTo(null);
        menu.setVisible(true);
        
        this.dispose();
        
    }//GEN-LAST:event_btn_volverActionPerformed

    public class ItemCombo {
    private int id;
    private String nombre;

    public ItemCombo(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    // Esto hace que el combo muestre el nombre
    @Override
    public String toString() {
        return nombre;
    }
}

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        Connection con = null;
        try {
            con = conexionSQL.getConnection();
            String titulo = jTextFieldNombre.getText();
            String autor = jTextFieldAutor.getText();
            String editorial = jTextFieldEditorial.getText();
            String isbn = jTextFieldISBN.getText();
            String tomo = jTextFieldTomo.getText();
            String copias = jTextFieldCopias.getText();
            
            /*Pedazo de codigo para que la base de datos tome los datos del jcalendar que tambien esta 
            en comentario mas arriba. para hacerlo funcionar, borrar los "/*" de comentario
            java.util.Date fecha = dateChooser.getDate();
            java.sql.Date fechaSQL = null;
            if (fecha != null) {
                fechaSQL = new java.sql.Date(fecha.getTime());
            }*/
            String fechaTexto = jTextFieldFecha.getText();
            java.sql.Date fechaSQL = null;
            if (!fechaTexto.isEmpty()) {
                fechaSQL = java.sql.Date.valueOf(fechaTexto); // convierte yyyy-MM-dd
    }

            String fila = jTextFieldFila.getText();
            String edicion = jTextFieldEdicion.getText();
            String categoria = (String) jComboBoxCategorias.getSelectedItem();
            String estanteria = (String) jComboBoxEstanterias.getSelectedItem();
            String codIdentificador = jTextFieldCodigo.getText();
            String posicion =jTextField11.getText();

            int categoriaId = -1;
            PreparedStatement psCat = con.prepareStatement("SELECT id FROM categorias WHERE nombre = ?");
            psCat.setString(1, categoria);
            ResultSet rsCat = psCat.executeQuery();
            if (rsCat.next()) {
                categoriaId = rsCat.getInt("id");
            }
            rsCat.close();
            psCat.close();
            
            int estanteriaId = -1;
            PreparedStatement psEst = con.prepareStatement("SELECT id FROM estanterias WHERE codigo = ?");
            psEst.setString(1, estanteria);
            ResultSet rsEst = psEst.executeQuery();
            if (rsEst.next()) {
                estanteriaId = rsEst.getInt("id");
            }
            rsEst.close();
            psEst.close();
            
            
            String sql = "INSERT INTO libros (cod_identificador,titulo, autor, categoria_id, isbn, n_copias, estante_id,  fila, posicion, fecha_publicacion, editorial, tomo, edicion) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, codIdentificador);
            ps.setString(2, titulo);
            ps.setString(3, autor);
            ps.setInt(4, categoriaId);
            ps.setString(5, isbn);
            ps.setString(6, copias);
            ps.setInt(7, estanteriaId);
            ps.setString(8, fila);
            ps.setString(9, posicion);
            ps.setDate(10, fechaSQL);
            ps.setString(11, editorial);
            ps.setString(12, tomo);
            ps.setString(13, edicion);
            
            
            int filasAfectadas = ps.executeUpdate();
            if (filasAfectadas > 0) {
                javax.swing.JOptionPane.showMessageDialog(this, "Libro guardado correctamente.");
            } else {    
                javax.swing.JOptionPane.showMessageDialog(this, "No se pudo guardar el libro.");
            }
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
            javax.swing.JOptionPane.showMessageDialog(this, "Error al guardar libro: " + e.getMessage());
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jTextFieldFilaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldFilaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldFilaActionPerformed

    private void jTextFieldCodigoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldCodigoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldCodigoActionPerformed

    private void jTextFieldFechaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldFechaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldFechaActionPerformed

    private void jTextFieldEditorialActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldEditorialActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldEditorialActionPerformed

    private void jTextField11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField11ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField11ActionPerformed

    private void jTextFieldNombreActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldNombreActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldNombreActionPerformed

    private void jTextFieldISBNActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldISBNActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldISBNActionPerformed

    private void jComboBoxEstanteriasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBoxEstanteriasActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBoxEstanteriasActionPerformed

    private void jTextFieldEdicionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldEdicionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldEdicionActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(AgregarLibro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AgregarLibro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AgregarLibro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AgregarLibro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AgregarLibro().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_volver;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButtonFecha;
    private javax.swing.JComboBox<String> jComboBoxCategorias;
    private javax.swing.JComboBox<String> jComboBoxEstanterias;
    private com.toedter.calendar.JDayChooser jDayChooser1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private com.toedter.calendar.JMonthChooser jMonthChooser3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField jTextField11;
    private javax.swing.JTextField jTextFieldAutor;
    private javax.swing.JTextField jTextFieldCodigo;
    private javax.swing.JTextField jTextFieldCopias;
    private javax.swing.JTextField jTextFieldEdicion;
    private javax.swing.JTextField jTextFieldEditorial;
    private javax.swing.JTextField jTextFieldFecha;
    private javax.swing.JTextField jTextFieldFila;
    private javax.swing.JTextField jTextFieldISBN;
    private javax.swing.JTextField jTextFieldNombre;
    private javax.swing.JTextField jTextFieldTomo;
    private com.toedter.calendar.JYearChooser jYearChooser1;
    // End of variables declaration//GEN-END:variables
}
