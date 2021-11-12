
import java.awt.Color;
import javax.swing.ButtonGroup;

/**
 * @authors Diana Zepeda & Kevin Limón
 */
public class EstadoFinanciero extends javax.swing.JFrame {

    public EstadoFinanciero() {
        initComponents();
        this.setSize(1366, 725);
        Color azul = new Color(62, 95, 138); // Color azul
        this.getContentPane().setBackground(azul); //Cambiar color de fondo
        ButtonGroup group = new ButtonGroup();
        group.add(jrbActivo);
        group.add(jrbPasivo);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        ISlbl = new javax.swing.JLabel();
        btnInicioP1 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        Usuario_lbl3 = new javax.swing.JLabel();
        Usuario_lbl4 = new javax.swing.JLabel();
        Usuario_lbl5 = new javax.swing.JLabel();
        Usuario_lbl11 = new javax.swing.JLabel();
        txtIDP = new javax.swing.JTextField();
        txtNombreP = new javax.swing.JTextField();
        jrbActivo = new javax.swing.JRadioButton();
        jrbPasivo = new javax.swing.JRadioButton();
        btnNuevoP = new javax.swing.JButton();
        btnGuardarP = new javax.swing.JButton();
        btnActualizarP = new javax.swing.JButton();
        btnCancelarP1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        Usuario_lbl8 = new javax.swing.JLabel();
        btnGenrerEF = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        ISlbl.setFont(new java.awt.Font("Microsoft YaHei", 1, 36)); // NOI18N
        ISlbl.setForeground(new java.awt.Color(255, 255, 255));
        ISlbl.setText("ESTADO FINANCIERO");
        getContentPane().add(ISlbl);
        ISlbl.setBounds(620, 40, 450, 60);

        btnInicioP1.setBackground(new java.awt.Color(202, 223, 251));
        btnInicioP1.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnInicioP1.setForeground(new java.awt.Color(25, 55, 87));
        btnInicioP1.setText("Inicio");
        btnInicioP1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInicioP1ActionPerformed(evt);
            }
        });
        getContentPane().add(btnInicioP1);
        btnInicioP1.setBounds(1210, 20, 120, 50);

        jPanel1.setBackground(new java.awt.Color(87, 131, 188));
        jPanel1.setLayout(null);

        Usuario_lbl3.setFont(new java.awt.Font("Microsoft YaHei", 1, 24)); // NOI18N
        Usuario_lbl3.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl3.setText("ACTIVO/PASIVO");
        jPanel1.add(Usuario_lbl3);
        Usuario_lbl3.setBounds(150, 20, 220, 50);

        Usuario_lbl4.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl4.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl4.setText("Nombre");
        jPanel1.add(Usuario_lbl4);
        Usuario_lbl4.setBounds(70, 70, 150, 50);

        Usuario_lbl5.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl5.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl5.setText("Monto");
        jPanel1.add(Usuario_lbl5);
        Usuario_lbl5.setBounds(70, 170, 150, 50);

        Usuario_lbl11.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl11.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl11.setText("Tipo");
        jPanel1.add(Usuario_lbl11);
        Usuario_lbl11.setBounds(70, 270, 190, 50);

        txtIDP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtIDP);
        txtIDP.setBounds(70, 120, 380, 50);

        txtNombreP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtNombreP);
        txtNombreP.setBounds(70, 220, 380, 50);

        jrbActivo.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jrbActivo.setForeground(new java.awt.Color(255, 255, 255));
        jrbActivo.setText("Activo");
        jPanel1.add(jrbActivo);
        jrbActivo.setBounds(140, 320, 90, 30);

        jrbPasivo.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jrbPasivo.setForeground(new java.awt.Color(255, 255, 255));
        jrbPasivo.setText("Pasivo");
        jPanel1.add(jrbPasivo);
        jrbPasivo.setBounds(290, 320, 90, 30);

        btnNuevoP.setBackground(new java.awt.Color(202, 223, 251));
        btnNuevoP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnNuevoP.setForeground(new java.awt.Color(25, 55, 87));
        btnNuevoP.setText("Nuevo");
        btnNuevoP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoPActionPerformed(evt);
            }
        });
        jPanel1.add(btnNuevoP);
        btnNuevoP.setBounds(80, 400, 120, 50);

        btnGuardarP.setBackground(new java.awt.Color(202, 223, 251));
        btnGuardarP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnGuardarP.setForeground(new java.awt.Color(25, 55, 87));
        btnGuardarP.setText("Guardar");
        btnGuardarP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarPActionPerformed(evt);
            }
        });
        jPanel1.add(btnGuardarP);
        btnGuardarP.setBounds(310, 400, 120, 50);

        btnActualizarP.setBackground(new java.awt.Color(202, 223, 251));
        btnActualizarP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnActualizarP.setForeground(new java.awt.Color(25, 55, 87));
        btnActualizarP.setText("Actualizar");
        btnActualizarP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnActualizarPActionPerformed(evt);
            }
        });
        jPanel1.add(btnActualizarP);
        btnActualizarP.setBounds(80, 480, 120, 50);

        btnCancelarP1.setBackground(new java.awt.Color(202, 223, 251));
        btnCancelarP1.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnCancelarP1.setForeground(new java.awt.Color(25, 55, 87));
        btnCancelarP1.setText("Cancelar");
        btnCancelarP1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarP1ActionPerformed(evt);
            }
        });
        jPanel1.add(btnCancelarP1);
        btnCancelarP1.setBounds(310, 480, 120, 50);

        getContentPane().add(jPanel1);
        jPanel1.setBounds(50, 60, 520, 570);

        jTable1.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "Nombre", "Monto", "Tipo"
            }
        ));
        jTable1.setRowHeight(35);
        jScrollPane1.setViewportView(jTable1);

        getContentPane().add(jScrollPane1);
        jScrollPane1.setBounds(660, 170, 640, 350);

        Usuario_lbl8.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl8.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl8.setText("Fecha: DD/MM/AA");
        getContentPane().add(Usuario_lbl8);
        Usuario_lbl8.setBounds(660, 110, 200, 50);

        btnGenrerEF.setBackground(new java.awt.Color(202, 223, 251));
        btnGenrerEF.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnGenrerEF.setForeground(new java.awt.Color(25, 55, 87));
        btnGenrerEF.setText("Generar");
        btnGenrerEF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGenrerEFActionPerformed(evt);
            }
        });
        getContentPane().add(btnGenrerEF);
        btnGenrerEF.setBounds(900, 580, 160, 50);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnInicioP1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInicioP1ActionPerformed
        Interfaz ven=new Interfaz();
        ven.setVisible(true);
        dispose();
    }//GEN-LAST:event_btnInicioP1ActionPerformed

    private void btnNuevoPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoPActionPerformed
        
    }//GEN-LAST:event_btnNuevoPActionPerformed

    private void btnGuardarPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarPActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnGuardarPActionPerformed

    private void btnActualizarPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnActualizarPActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnActualizarPActionPerformed

    private void btnGenrerEFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGenrerEFActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnGenrerEFActionPerformed

    private void btnCancelarP1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarP1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnCancelarP1ActionPerformed

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
            java.util.logging.Logger.getLogger(EstadoFinanciero.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(EstadoFinanciero.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(EstadoFinanciero.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(EstadoFinanciero.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new EstadoFinanciero().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel ISlbl;
    private javax.swing.JLabel Usuario_lbl11;
    private javax.swing.JLabel Usuario_lbl3;
    private javax.swing.JLabel Usuario_lbl4;
    private javax.swing.JLabel Usuario_lbl5;
    private javax.swing.JLabel Usuario_lbl8;
    private javax.swing.JButton btnActualizarP;
    private javax.swing.JButton btnCancelarP1;
    private javax.swing.JButton btnGenrerEF;
    private javax.swing.JButton btnGuardarP;
    private javax.swing.JButton btnInicioP1;
    private javax.swing.JButton btnNuevoP;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JRadioButton jrbActivo;
    private javax.swing.JRadioButton jrbPasivo;
    private javax.swing.JTextField txtIDP;
    private javax.swing.JTextField txtNombreP;
    // End of variables declaration//GEN-END:variables
}
