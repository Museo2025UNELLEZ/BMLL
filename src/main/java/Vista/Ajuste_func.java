/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Vista;

/**
 *
 * @author Admin
 */
public class Ajuste_func extends javax.swing.JFrame {

    public Ajuste_func() {
        initComponents();
    }

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        btn_respaldo = new javax.swing.JButton();
        btn_volver = new javax.swing.JButton();
        lbl_respaldo = new javax.swing.JLabel();
        bnt_usuarios = new javax.swing.JButton();
        lbl_usuarios = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(244, 226, 222));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_respaldo.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        btn_respaldo.setForeground(new java.awt.Color(0, 113, 114));
        btn_respaldo.setText("Generar Respaldo");
        btn_respaldo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_respaldoActionPerformed(evt);
            }
        });
        jPanel1.add(btn_respaldo, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 100, 370, 140));

        btn_volver.setFont(new java.awt.Font("Verdana", 0, 18)); // NOI18N
        btn_volver.setForeground(new java.awt.Color(0, 113, 114));
        btn_volver.setText("VOLVER");
        btn_volver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_volverActionPerformed(evt);
            }
        });
        jPanel1.add(btn_volver, new org.netbeans.lib.awtextra.AbsoluteConstraints(530, 640, 290, 50));

        lbl_respaldo.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        lbl_respaldo.setForeground(new java.awt.Color(0, 0, 0));
        lbl_respaldo.setText("1. Boton para generar respaldo de la base de datos y guardarlo donde quiera");
        jPanel1.add(lbl_respaldo, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 70, -1, -1));

        bnt_usuarios.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        bnt_usuarios.setForeground(new java.awt.Color(0, 113, 114));
        bnt_usuarios.setText("Crear Usuario");
        bnt_usuarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bnt_usuariosActionPerformed(evt);
            }
        });
        jPanel1.add(bnt_usuarios, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 370, 370, 140));

        lbl_usuarios.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        lbl_usuarios.setForeground(new java.awt.Color(0, 0, 0));
        lbl_usuarios.setText("2. Crear Nuevos Usuarios que puedan acceder al sistema");
        jPanel1.add(lbl_usuarios, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 340, -1, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1360, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 720, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_respaldoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_respaldoActionPerformed
        onGenerarRespaldo();
    }//GEN-LAST:event_btn_respaldoActionPerformed

    private void btn_volverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_volverActionPerformed
        onVolver();
    }//GEN-LAST:event_btn_volverActionPerformed

    private void bnt_usuariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bnt_usuariosActionPerformed
        // TODO add your handling code here:
        onAgregarUsuario ();
    }//GEN-LAST:event_bnt_usuariosActionPerformed

    private void onGenerarRespaldo() {
        String time = new java.text.SimpleDateFormat("yyyyMMdd_HHmmss").format(new java.util.Date());
        java.io.File defaultFile = new java.io.File(System.getProperty("user.home") + java.io.File.separator + "Desktop", "bmll_backup_" + time + ".sql");

        javax.swing.JFileChooser chooser = new javax.swing.JFileChooser();
        chooser.setDialogTitle("Guardar respaldo");
        chooser.setSelectedFile(defaultFile);
        int sel = chooser.showSaveDialog(this);
        if (sel != javax.swing.JFileChooser.APPROVE_OPTION) {
            return;
        }

        java.io.File outFile = chooser.getSelectedFile();
    btn_respaldo.setEnabled(false);
    setCursor(java.awt.Cursor.getPredefinedCursor(java.awt.Cursor.WAIT_CURSOR));

        new javax.swing.SwingWorker<java.io.File, Void>(){
            @Override
            protected java.io.File doInBackground() throws Exception {
                try (java.sql.Connection c = controlador.conexionSQL.getConnection()) {
                    if (c == null) throw new java.sql.SQLException("No se pudo establecer conexión con la base de datos");
                }

                try (java.sql.Connection conn = controlador.conexionSQL.getConnection(); java.io.FileOutputStream fos = new java.io.FileOutputStream(outFile)) {
                    if (conn == null) throw new java.sql.SQLException("No se pudo establecer conexión con la base de datos");

                    String jdbcUrl = controlador.conexionSQL.getDbUrl();
                    String database = null;
                    try {
                        String tmp = jdbcUrl;
                        if (tmp.startsWith("jdbc:")) tmp = tmp.substring(tmp.indexOf(":") + 1);
                        if (tmp.startsWith("//")) tmp = tmp.substring(2);
                        if (tmp.startsWith("mysql:")) tmp = tmp.substring("mysql:".length());
                        if (tmp.startsWith("//")) tmp = tmp.substring(2);
                        String[] parts = tmp.split("/", 2);
                        if (parts.length == 2) {
                            database = parts[1];
                            if (database.contains("?")) database = database.split("\\?",2)[0];
                        }
                    } catch (Exception ex) { }

                    String header = "-- BMLL SQL Backup\n-- Generated: " + new java.util.Date() + "\n\n";
                    fos.write(header.getBytes());
                    fos.write("SET FOREIGN_KEY_CHECKS=0;\n".getBytes());
                    fos.write("SET NAMES utf8mb4;\n\n".getBytes());

                    java.sql.DatabaseMetaData meta = conn.getMetaData();
                    java.sql.ResultSet tablesRs = meta.getTables(conn.getCatalog(), null, "%", new String[]{"TABLE"});
                    java.util.List<String> tables = new java.util.ArrayList<>();
                    while (tablesRs.next()) {
                        String tblCat = tablesRs.getString("TABLE_CAT");
                        String tblName = tablesRs.getString("TABLE_NAME");
                        if (database == null || database.isEmpty() || tblCat == null || tblCat.equals(database)) {
                            tables.add(tblName);
                        }
                    }
                    tablesRs.close();

                    java.sql.Statement stmt = conn.createStatement();
                    for (String tbl : tables) {
                        try (java.sql.ResultSet createRs = stmt.executeQuery("SHOW CREATE TABLE `" + tbl + "`")) {
                            if (createRs.next()) {
                                String createSql = createRs.getString(2);
                                fos.write(("-- ----------------------------\n").getBytes());
                                fos.write(("-- Table structure for `" + tbl + "`\n").getBytes());
                                fos.write(("-- ----------------------------\n").getBytes());
                                fos.write(("DROP TABLE IF EXISTS `" + tbl + "`;\n").getBytes());
                                fos.write((createSql + ";\n\n").getBytes());
                            }
                        }

                        try (java.sql.ResultSet rs = stmt.executeQuery("SELECT * FROM `" + tbl + "`")) {
                            java.sql.ResultSetMetaData rsmd = rs.getMetaData();
                            int cols = rsmd.getColumnCount();
                            StringBuilder insertPrefix = new StringBuilder();
                            insertPrefix.append("INSERT INTO `").append(tbl).append("` (");
                            for (int i = 1; i <= cols; i++) {
                                insertPrefix.append("`").append(rsmd.getColumnName(i)).append("`");
                                if (i < cols) insertPrefix.append(",");
                            }
                            insertPrefix.append(") VALUES ");

                            boolean firstRowWritten = false;
                            StringBuilder batch = new StringBuilder();
                            while (rs.next()) {
                                StringBuilder values = new StringBuilder();
                                values.append("(");
                                for (int i = 1; i <= cols; i++) {
                                    Object obj = rs.getObject(i);
                                    if (obj == null) {
                                        values.append("NULL");
                                    } else {
                                        int type = rsmd.getColumnType(i);
                                        if (type == java.sql.Types.INTEGER || type == java.sql.Types.BIGINT || type == java.sql.Types.SMALLINT || type == java.sql.Types.TINYINT || type == java.sql.Types.NUMERIC || type == java.sql.Types.DECIMAL || type == java.sql.Types.FLOAT || type == java.sql.Types.DOUBLE) {
                                            values.append(obj.toString());
                                        } else {
                                            String s = rs.getString(i);
                                            if (s == null) {
                                                values.append("NULL");
                                            } else {
                                                boolean isDateType = (type == java.sql.Types.DATE || type == java.sql.Types.TIME || type == java.sql.Types.TIMESTAMP);
                                                if (isDateType) {
                                                    String trimmed = s.trim();
                                                    if (trimmed.startsWith("0000-00-00") || trimmed.startsWith("0000-00-00 00:00:00") || trimmed.equals("0000-00-00")) {
                                                        values.append("NULL");
                                                    } else {
                                                        s = s.replace("\\", "\\\\");
                                                        s = s.replace("'", "\\'");
                                                        values.append("'").append(s).append("'");
                                                    }
                                                } else {
                                                    s = s.replace("\\", "\\\\");
                                                    s = s.replace("'", "\\'");
                                                    values.append("'").append(s).append("'");
                                                }
                                            }
                                        }
                                    }
                                    if (i < cols) values.append(",");
                                }
                                values.append(")");

                                if (!firstRowWritten) {
                                    batch.append(insertPrefix);
                                    batch.append(values);
                                    firstRowWritten = true;
                                } else {
                                    batch.append(",");
                                    batch.append(values);
                                }

                                if (batch.length() > 1_000_000) {
                                    batch.append(";\n");
                                    fos.write(batch.toString().getBytes());
                                    batch.setLength(0);
                                    firstRowWritten = false;
                                }
                            }

                            if (batch.length() > 0) {
                                batch.append(";\n\n");
                                fos.write(batch.toString().getBytes());
                                batch.setLength(0);
                            }
                        }
                    }

                    fos.write("SET FOREIGN_KEY_CHECKS=1;\n".getBytes());
                    stmt.close();
                }

                return outFile;
            }

            @Override
            protected void done() {
                setCursor(java.awt.Cursor.getDefaultCursor());
                btn_respaldo.setEnabled(true);
                try {
                    java.io.File f = get();
                    javax.swing.JOptionPane.showMessageDialog(Ajuste_func.this, "Respaldo creado:\n" + f.getAbsolutePath(), "Respaldo completado", javax.swing.JOptionPane.INFORMATION_MESSAGE);
                } catch (Exception ex) {
                    javax.swing.JOptionPane.showMessageDialog(Ajuste_func.this, "Error al crear respaldo:\n" + ex.getMessage(), "Error", javax.swing.JOptionPane.ERROR_MESSAGE);
                }
            }
        }.execute();
    }

    private void onVolver() {
        try {
            MenuPrincipal menu = new MenuPrincipal();
            menu.setLocationRelativeTo(null);
            menu.setVisible(true);
        } catch (Exception ex) {
            javax.swing.JOptionPane.showMessageDialog(this, "No se pudo abrir el menú principal: " + ex.getMessage(), "Error", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
        this.dispose();
    }
    private void onAgregarUsuario() {
    try {
        AgregarUsuario ventana = new AgregarUsuario();
        ventana.setLocationRelativeTo(null);
        ventana.setVisible(true);
    } catch (Exception ex) {
        javax.swing.JOptionPane.showMessageDialog(this, 
            "No se pudo abrir la ventana de agregar usuario: " + ex.getMessage(), 
            "Error", 
            javax.swing.JOptionPane.ERROR_MESSAGE);
    }
    this.dispose();
}

    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bnt_usuarios;
    private javax.swing.JButton btn_respaldo;
    private javax.swing.JButton btn_volver;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lbl_respaldo;
    private javax.swing.JLabel lbl_usuarios;
    // End of variables declaration//GEN-END:variables
}
