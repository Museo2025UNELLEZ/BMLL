
package Vista;

import Modelo.Usuario;
import controlador.ControlLogin;
import java.awt.Image;
import java.sql.SQLException;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;


public class Login extends javax.swing.JFrame {

 
    public Login() {
        initComponents();
        CargarLogo();
        System.out.println(
    getClass().getResource("/archivos/Recorte.png")
);

        
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

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(204, 204, 204));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbl_usuario.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        lbl_usuario.setForeground(new java.awt.Color(0, 0, 0));
        lbl_usuario.setText("Usuario:");
        jPanel1.add(lbl_usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 50, -1, 20));

        box_usuario.setBackground(new java.awt.Color(204, 204, 204));
        box_usuario.setForeground(new java.awt.Color(0, 0, 0));
        box_usuario.setBorder(null);
        box_usuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                box_usuarioActionPerformed(evt);
            }
        });
        jPanel1.add(box_usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 80, 300, -1));

        jSeparator1.setForeground(new java.awt.Color(0, 0, 0));
        jPanel1.add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 110, 300, 10));

        box_clave.setBackground(new java.awt.Color(204, 204, 204));
        box_clave.setForeground(new java.awt.Color(0, 0, 0));
        box_clave.setBorder(null);
        jPanel1.add(box_clave, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 180, 310, -1));

        lbl_clave.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        lbl_clave.setForeground(new java.awt.Color(0, 0, 0));
        lbl_clave.setText("Clave:");
        jPanel1.add(lbl_clave, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 140, -1, -1));

        jSeparator2.setForeground(new java.awt.Color(0, 0, 0));
        jPanel1.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 210, 310, -1));

        btn_entrar.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        btn_entrar.setText("Entrar");
        btn_entrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_entrarActionPerformed(evt);
            }
        });
        jPanel1.add(btn_entrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 280, 180, -1));
        jPanel1.add(lbl_icono, new org.netbeans.lib.awtextra.AbsoluteConstraints(500, 30, 430, 270));

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
        ImageIcon icon = new ImageIcon(getClass().getResource("/archivos/Recorte.png"));
        
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
        // TODO add your handling code here:
        
        try {
            String user = box_usuario.getText().trim();
            String pass = new String(box_clave.getPassword());

            ControlLogin control = new ControlLogin();
            Usuario u = control.autenticar(user, pass); 

            if (u != null) {
                AbrirMenu();
            } else {
                JOptionPane.showMessageDialog(this, "Usuario o clave incorrectos");
            }

        }catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error de base de datos: " + e.getMessage());
        }
    }//GEN-LAST:event_btn_entrarActionPerformed

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

