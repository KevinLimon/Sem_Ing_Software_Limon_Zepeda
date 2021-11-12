
import java.awt.Color;

/**
 * @authors Diana Zepeda & Kevin Limón
 */
public class Empleado extends javax.swing.JFrame {


    public Empleado() {
        initComponents();
        this.setSize(1366, 725);
        Color azul = new Color(62, 95, 138); // Color azul
        this.getContentPane().setBackground(azul); //Cambiar color de fondo
    }

 
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnNuevoP = new javax.swing.JButton();
        btnGuardarP = new javax.swing.JButton();
        btnActualizarP = new javax.swing.JButton();
        btnCancelarP = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        Usuario_lbl3 = new javax.swing.JLabel();
        Usuario_lbl4 = new javax.swing.JLabel();
        Usuario_lbl5 = new javax.swing.JLabel();
        Usuario_lbl6 = new javax.swing.JLabel();
        Usuario_lbl7 = new javax.swing.JLabel();
        Usuario_lbl8 = new javax.swing.JLabel();
        Usuario_lbl9 = new javax.swing.JLabel();
        txtCURP = new javax.swing.JTextField();
        txtIDE = new javax.swing.JTextField();
        txtNombreE = new javax.swing.JTextField();
        txtSalBas = new javax.swing.JTextField();
        txtDom = new javax.swing.JTextField();
        txtCuentaCot = new javax.swing.JTextField();
        txtNSS = new javax.swing.JTextField();
        Usuario_lbl10 = new javax.swing.JLabel();
        Usuario_lbl11 = new javax.swing.JLabel();
        jdateE = new com.toedter.calendar.JDateChooser();
        txtProfesion1 = new javax.swing.JTextField();
        Usuario_lbl12 = new javax.swing.JLabel();
        txtTel = new javax.swing.JTextField();
        Usuario_lbl13 = new javax.swing.JLabel();
        cbActivo = new javax.swing.JCheckBox();
        ISlbl = new javax.swing.JLabel();
        btnInicioP = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        btnNuevoP.setBackground(new java.awt.Color(202, 223, 251));
        btnNuevoP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnNuevoP.setForeground(new java.awt.Color(25, 55, 87));
        btnNuevoP.setText("Nuevo");
        btnNuevoP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoPActionPerformed(evt);
            }
        });
        getContentPane().add(btnNuevoP);
        btnNuevoP.setBounds(690, 560, 120, 50);

        btnGuardarP.setBackground(new java.awt.Color(202, 223, 251));
        btnGuardarP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnGuardarP.setForeground(new java.awt.Color(25, 55, 87));
        btnGuardarP.setText("Guardar");
        btnGuardarP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarPActionPerformed(evt);
            }
        });
        getContentPane().add(btnGuardarP);
        btnGuardarP.setBounds(840, 560, 120, 50);

        btnActualizarP.setBackground(new java.awt.Color(202, 223, 251));
        btnActualizarP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnActualizarP.setForeground(new java.awt.Color(25, 55, 87));
        btnActualizarP.setText("Actualizar");
        btnActualizarP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnActualizarPActionPerformed(evt);
            }
        });
        getContentPane().add(btnActualizarP);
        btnActualizarP.setBounds(990, 560, 120, 50);

        btnCancelarP.setBackground(new java.awt.Color(202, 223, 251));
        btnCancelarP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnCancelarP.setForeground(new java.awt.Color(25, 55, 87));
        btnCancelarP.setText("Cancelar");
        btnCancelarP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarPActionPerformed(evt);
            }
        });
        getContentPane().add(btnCancelarP);
        btnCancelarP.setBounds(1140, 560, 120, 50);

        jTable1.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null, null, null}
            },
            new String [] {
                "ID", "Nombre", "CURP", "Profesión", "Cuenta Cotizl", "Fecha de Nac", "NSS", "Domicilio", "Teléfono", "Salario Base", "Estado"
            }
        ));
        jTable1.setColumnSelectionAllowed(true);
        jTable1.setRowHeight(35);
        jScrollPane1.setViewportView(jTable1);
        jTable1.getColumnModel().getSelectionModel().setSelectionMode(javax.swing.ListSelectionModel.SINGLE_INTERVAL_SELECTION);

        getContentPane().add(jScrollPane1);
        jScrollPane1.setBounds(650, 150, 650, 350);

        jPanel1.setBackground(new java.awt.Color(87, 131, 188));
        jPanel1.setLayout(null);

        Usuario_lbl3.setFont(new java.awt.Font("Microsoft YaHei", 1, 24)); // NOI18N
        Usuario_lbl3.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl3.setText("EMPLEADO");
        jPanel1.add(Usuario_lbl3);
        Usuario_lbl3.setBounds(30, 10, 150, 50);

        Usuario_lbl4.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl4.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl4.setText("Nombre");
        jPanel1.add(Usuario_lbl4);
        Usuario_lbl4.setBounds(70, 140, 150, 50);

        Usuario_lbl5.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl5.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl5.setText("Cuenta Cotiz");
        jPanel1.add(Usuario_lbl5);
        Usuario_lbl5.setBounds(280, 230, 150, 50);

        Usuario_lbl6.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl6.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl6.setText("Salario Base");
        jPanel1.add(Usuario_lbl6);
        Usuario_lbl6.setBounds(280, 500, 150, 50);

        Usuario_lbl7.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl7.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl7.setText("CURP");
        jPanel1.add(Usuario_lbl7);
        Usuario_lbl7.setBounds(280, 50, 150, 50);

        Usuario_lbl8.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl8.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl8.setText("NSS");
        jPanel1.add(Usuario_lbl8);
        Usuario_lbl8.setBounds(280, 320, 150, 50);

        Usuario_lbl9.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl9.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl9.setText("Fecha de Nac");
        jPanel1.add(Usuario_lbl9);
        Usuario_lbl9.setBounds(70, 320, 190, 50);

        txtCURP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtCURP);
        txtCURP.setBounds(280, 90, 170, 50);

        txtIDE.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtIDE);
        txtIDE.setBounds(70, 90, 170, 50);

        txtNombreE.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtNombreE);
        txtNombreE.setBounds(70, 180, 380, 50);

        txtSalBas.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtSalBas);
        txtSalBas.setBounds(280, 540, 170, 50);

        txtDom.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtDom);
        txtDom.setBounds(70, 450, 380, 50);

        txtCuentaCot.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtCuentaCot);
        txtCuentaCot.setBounds(280, 270, 170, 50);

        txtNSS.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtNSS);
        txtNSS.setBounds(280, 360, 170, 50);

        Usuario_lbl10.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl10.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl10.setText("ID");
        jPanel1.add(Usuario_lbl10);
        Usuario_lbl10.setBounds(70, 50, 150, 50);

        Usuario_lbl11.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl11.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl11.setText("Profesión");
        jPanel1.add(Usuario_lbl11);
        Usuario_lbl11.setBounds(70, 230, 150, 50);

        jdateE.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(jdateE);
        jdateE.setBounds(70, 360, 170, 50);

        txtProfesion1.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtProfesion1);
        txtProfesion1.setBounds(70, 270, 170, 50);

        Usuario_lbl12.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl12.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl12.setText("Domicilio");
        jPanel1.add(Usuario_lbl12);
        Usuario_lbl12.setBounds(70, 410, 150, 50);

        txtTel.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtTel);
        txtTel.setBounds(70, 540, 170, 50);

        Usuario_lbl13.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl13.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl13.setText("Teléfono");
        jPanel1.add(Usuario_lbl13);
        Usuario_lbl13.setBounds(70, 500, 150, 50);

        cbActivo.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        cbActivo.setForeground(new java.awt.Color(255, 255, 255));
        cbActivo.setText("Activo");
        cbActivo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbActivoActionPerformed(evt);
            }
        });
        jPanel1.add(cbActivo);
        cbActivo.setBounds(410, 20, 90, 33);

        getContentPane().add(jPanel1);
        jPanel1.setBounds(50, 30, 520, 630);

        ISlbl.setFont(new java.awt.Font("Microsoft YaHei", 1, 36)); // NOI18N
        ISlbl.setForeground(new java.awt.Color(255, 255, 255));
        ISlbl.setText("EMPLEADOS");
        getContentPane().add(ISlbl);
        ISlbl.setBounds(650, 60, 320, 60);

        btnInicioP.setBackground(new java.awt.Color(202, 223, 251));
        btnInicioP.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnInicioP.setForeground(new java.awt.Color(25, 55, 87));
        btnInicioP.setText("Inicio");
        btnInicioP.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInicioPActionPerformed(evt);
            }
        });
        getContentPane().add(btnInicioP);
        btnInicioP.setBounds(1210, 20, 120, 50);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnNuevoPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoPActionPerformed
        Inventario ven=new Inventario();
        ven.setVisible(true);
        dispose();
    }//GEN-LAST:event_btnNuevoPActionPerformed

    private void btnGuardarPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarPActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnGuardarPActionPerformed

    private void btnActualizarPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnActualizarPActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnActualizarPActionPerformed

    private void btnCancelarPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarPActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnCancelarPActionPerformed

    private void btnInicioPActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInicioPActionPerformed
        Interfaz ven=new Interfaz();
        ven.setVisible(true);
        dispose();
    }//GEN-LAST:event_btnInicioPActionPerformed

    private void cbActivoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbActivoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cbActivoActionPerformed

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
            java.util.logging.Logger.getLogger(Empleado.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Empleado.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Empleado.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Empleado.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Empleado().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel ISlbl;
    private javax.swing.JLabel Usuario_lbl10;
    private javax.swing.JLabel Usuario_lbl11;
    private javax.swing.JLabel Usuario_lbl12;
    private javax.swing.JLabel Usuario_lbl13;
    private javax.swing.JLabel Usuario_lbl3;
    private javax.swing.JLabel Usuario_lbl4;
    private javax.swing.JLabel Usuario_lbl5;
    private javax.swing.JLabel Usuario_lbl6;
    private javax.swing.JLabel Usuario_lbl7;
    private javax.swing.JLabel Usuario_lbl8;
    private javax.swing.JLabel Usuario_lbl9;
    private javax.swing.JButton btnActualizarP;
    private javax.swing.JButton btnCancelarP;
    private javax.swing.JButton btnGuardarP;
    private javax.swing.JButton btnInicioP;
    private javax.swing.JButton btnNuevoP;
    private javax.swing.JCheckBox cbActivo;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private com.toedter.calendar.JDateChooser jdateE;
    private javax.swing.JTextField txtCURP;
    private javax.swing.JTextField txtCuentaCot;
    private javax.swing.JTextField txtDom;
    private javax.swing.JTextField txtIDE;
    private javax.swing.JTextField txtNSS;
    private javax.swing.JTextField txtNombreE;
    private javax.swing.JTextField txtProfesion1;
    private javax.swing.JTextField txtSalBas;
    private javax.swing.JTextField txtTel;
    // End of variables declaration//GEN-END:variables
}
