
package Vista;

import Modelo.Usuario;
import com.formdev.flatlaf.FlatDarkLaf;
import com.formdev.flatlaf.FlatLightLaf;
import controlador.ControlLogin;
import java.awt.Image;
import java.sql.SQLException;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import javax.swing.SwingWorker;
import javax.swing.Timer;
import java.awt.Cursor;


public class Login extends javax.swing.JFrame {
    // contador simple de intentos fallidos y bloqueo temporal
    private int failedAttempts = 0;
    private static final int MAX_ATTEMPTS = 10;
    private Timer lockoutTimer;

 
    public Login() {
        initComponents();
        CargarLogo();
        getRootPane().setDefaultButton(btn_entrar);
        FlatLightLaf.setup();

        
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        lbl_usuario = new javax.swing.JLabel();
        box_usuario = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        box_clave = new javax.swing.JPasswordField();
        lbl_clave = new javax.swing.JLabel();
        jSeparator2 = new javax.swing.JSeparator();
        btn_entrar = new javax.swing.JButton();
        lbl_icono = new javax.swing.JLabel();
        btn_salir = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(244, 226, 222));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbl_usuario.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        lbl_usuario.setForeground(new java.awt.Color(242, 130, 37));
        lbl_usuario.setText("Usuario:");
        jPanel1.add(lbl_usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 50, -1, 20));

        box_usuario.setBackground(new java.awt.Color(244, 226, 222));
        box_usuario.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        box_usuario.setForeground(new java.awt.Color(0, 113, 114));
        box_usuario.setBorder(null);
        box_usuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                box_usuarioActionPerformed(evt);
            }
        });
        jPanel1.add(box_usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 80, 300, -1));

        jSeparator1.setBackground(new java.awt.Color(242, 130, 37));
        jSeparator1.setForeground(new java.awt.Color(242, 130, 37));
        jPanel1.add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 110, 360, 10));

        box_clave.setBackground(new java.awt.Color(244, 226, 222));
        box_clave.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        box_clave.setForeground(new java.awt.Color(0, 113, 114));
        box_clave.setBorder(null);
        jPanel1.add(box_clave, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 180, 310, -1));

        lbl_clave.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        lbl_clave.setForeground(new java.awt.Color(242, 130, 37));
        lbl_clave.setText("Clave:");
        jPanel1.add(lbl_clave, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 140, -1, -1));

        jSeparator2.setBackground(new java.awt.Color(242, 130, 37));
        jSeparator2.setForeground(new java.awt.Color(242, 130, 37));
        jPanel1.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 210, 360, -1));

    btn_entrar.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
    btn_entrar.setForeground(new java.awt.Color(0, 113, 114));
    btn_entrar.setText("Entrar");
        btn_entrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_entrarActionPerformed(evt);
            }
        });
        btn_entrar.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                btn_entrarKeyPressed(evt);
            }
        });
        jPanel1.add(btn_entrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 270, 180, -1));
        jPanel1.add(lbl_icono, new org.netbeans.lib.awtextra.AbsoluteConstraints(500, 30, 430, 270));

    btn_salir.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
    btn_salir.setForeground(new java.awt.Color(0, 113, 114));
    btn_salir.setText("Salir");
        btn_salir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_salirActionPerformed(evt);
            }
        });
        jPanel1.add(btn_salir, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 270, 180, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1003, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 339, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    private void CargarLogo(){
        ImageIcon icon = new ImageIcon(getClass().getResource("/archivos/Logod.png"));
        
        Image img = icon.getImage().getScaledInstance(lbl_icono.getWidth(),lbl_icono.getHeight(), Image.SCALE_SMOOTH);
        
        lbl_icono.setIcon(new ImageIcon(img));
    }
    private void AbrirMenu(){
        MenuPrincipal menu = new MenuPrincipal();
        menu.setLocationRelativeTo(null);
        menu.setVisible(true);
        this.dispose();
        
    }
    private void box_usuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_box_usuarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_box_usuarioActionPerformed

    private void btn_entrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_entrarActionPerformed
        // ejecutar autenticación en background para no bloquear la UI
        if (lockoutTimer != null && lockoutTimer.isRunning()) {
            JOptionPane.showMessageDialog(this, "Acceso temporalmente bloqueado. Intenta más tarde.", "Bloqueado", JOptionPane.WARNING_MESSAGE);
            return;
        }

        final String user = box_usuario.getText().trim();
        final char[] passChars = box_clave.getPassword();

        // desactivar botones y mostrar cursor de espera
        btn_entrar.setEnabled(false);
        btn_salir.setEnabled(false);
        setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));

        new SwingWorker<Usuario, Void>() {
            @Override
            protected Usuario doInBackground() throws Exception {
                try {
                    ControlLogin control = new ControlLogin();
                    String pass = new String(passChars);
                    return control.autenticar(user, pass);
                } finally {
                    // limpiar el array de contraseña por seguridad
                    java.util.Arrays.fill(passChars, '\0');
                }
            }

            @Override
            protected void done() {
                try {
                    Usuario u = get();
                    if (u != null) {
                        // login correcto
                        failedAttempts = 0;
                        // si es admin, abre el menú principal; si no, abrir pantalla Consultas con volver deshabilitado
                        if (u.getIs_admin() == 1) {
                            AbrirMenu();
                        } else {
                            Consultas consultas = new Consultas();
                            consultas.setVolverEnabled(false);
                            consultas.setLocationRelativeTo(null);
                            consultas.setVisible(true);
                            // cerrar login
                            Login.this.dispose();
                        }
                        return;
                    }

                    // fallo en autenticación
                    failedAttempts++;
                    if (failedAttempts >= MAX_ATTEMPTS) {
                        // bloquear por 30 segundos
                        btn_entrar.setEnabled(false);
                        lockoutTimer = new Timer(30_000, ev -> {
                            failedAttempts = 0;
                            btn_entrar.setEnabled(true);
                            if (lockoutTimer != null) lockoutTimer.stop();
                        });
                        lockoutTimer.setRepeats(false);
                        lockoutTimer.start();
                        JOptionPane.showMessageDialog(Login.this, "Usuario o clave incorrectos. Se ha bloqueado el acceso temporalmente por demasiados intentos.", "Bloqueado", JOptionPane.WARNING_MESSAGE);
                    } else {
                        JOptionPane.showMessageDialog(Login.this, "Usuario o clave incorrectos. Intentos restantes: " + (MAX_ATTEMPTS - failedAttempts), "Error", JOptionPane.ERROR_MESSAGE);
                    }

                } catch (Exception ex) {
                    Throwable cause = ex.getCause();
                    if (cause instanceof SQLException) {
                        JOptionPane.showMessageDialog(Login.this, "Error de base de datos: " + cause.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                    } else {
                        JOptionPane.showMessageDialog(Login.this, "Error inesperado: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
                    }
                } finally {
                    // sólo reactivar si no estamos en bloqueo temporal
                    if (lockoutTimer == null || !lockoutTimer.isRunning()) {
                        btn_entrar.setEnabled(true);
                    }
                    btn_salir.setEnabled(true);
                    setCursor(Cursor.getDefaultCursor());
                    box_clave.setText("");
                }
            }
        }.execute();
    }//GEN-LAST:event_btn_entrarActionPerformed

    private void btn_salirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_salirActionPerformed
        // TODO add your handling code here:
        
        int opcion = JOptionPane.showConfirmDialog(this,"Desea Salir de BMLL?","Confirmacion",JOptionPane.YES_NO_OPTION);
        
        if(opcion == JOptionPane.YES_OPTION){
            System.exit(0);
        }
    }//GEN-LAST:event_btn_salirActionPerformed

    private void btn_entrarKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_btn_entrarKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_btn_entrarKeyPressed

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
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPasswordField box_clave;
    private javax.swing.JTextField box_usuario;
    private javax.swing.JButton btn_entrar;
    private javax.swing.JButton btn_salir;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JLabel lbl_clave;
    private javax.swing.JLabel lbl_icono;
    private javax.swing.JLabel lbl_usuario;
    // End of variables declaration//GEN-END:variables
    
     public void open() {
        SwingUtilities.invokeLater(() -> setLocationRelativeTo(null));
        SwingUtilities.invokeLater(() -> setVisible(true));
    }


}

