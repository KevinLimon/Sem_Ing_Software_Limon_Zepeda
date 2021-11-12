
import java.awt.Color;

/**
 * @authors Diana Zepeda & Kevin Limón
 */
public class Evaluacion extends javax.swing.JFrame {

    public Evaluacion() {
        initComponents();
        this.setSize(1366, 725);
        Color azul = new Color(62, 95, 138); // Color azul
        this.getContentPane().setBackground(azul); //Cambiar color de fondo
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ISlbl = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        Usuario_lbl4 = new javax.swing.JLabel();
        Usuario_lbl5 = new javax.swing.JLabel();
        Usuario_lbl7 = new javax.swing.JLabel();
        txtIDEv = new javax.swing.JTextField();
        Usuario_lbl10 = new javax.swing.JLabel();
        Usuario_lbl11 = new javax.swing.JLabel();
        Usuario_lbl8 = new javax.swing.JLabel();
        jsMO = new javax.swing.JSpinner();
        jsBO = new javax.swing.JSpinner();
        jScrollPane1 = new javax.swing.JScrollPane();
        jtCom = new javax.swing.JTextArea();
        txtIDEmEv1 = new javax.swing.JTextField();
        btnInicioP1 = new javax.swing.JButton();
        btnGuardarEv = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        ISlbl.setFont(new java.awt.Font("Microsoft YaHei", 1, 36)); // NOI18N
        ISlbl.setForeground(new java.awt.Color(255, 255, 255));
        ISlbl.setText("EVALUACIÓN");
        getContentPane().add(ISlbl);
        ISlbl.setBounds(580, 20, 320, 60);

        jPanel1.setBackground(new java.awt.Color(87, 131, 188));
        jPanel1.setLayout(null);

        Usuario_lbl4.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl4.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl4.setText("Malas Observaciones");
        jPanel1.add(Usuario_lbl4);
        Usuario_lbl4.setBounds(390, 150, 240, 50);

        Usuario_lbl5.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl5.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl5.setText("Comentarios");
        jPanel1.add(Usuario_lbl5);
        Usuario_lbl5.setBounds(70, 240, 150, 50);

        Usuario_lbl7.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl7.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl7.setText("Fecha: DD/MM/AA");
        jPanel1.add(Usuario_lbl7);
        Usuario_lbl7.setBounds(480, 10, 200, 50);

        txtIDEv.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtIDEv);
        txtIDEv.setBounds(70, 100, 240, 50);

        Usuario_lbl10.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl10.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl10.setText("ID");
        jPanel1.add(Usuario_lbl10);
        Usuario_lbl10.setBounds(70, 60, 150, 50);

        Usuario_lbl11.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl11.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl11.setText("Buenas Observaciones");
        jPanel1.add(Usuario_lbl11);
        Usuario_lbl11.setBounds(70, 150, 240, 50);

        Usuario_lbl8.setFont(new java.awt.Font("Microsoft YaHei", 1, 20)); // NOI18N
        Usuario_lbl8.setForeground(new java.awt.Color(255, 255, 255));
        Usuario_lbl8.setText("ID Empleado");
        jPanel1.add(Usuario_lbl8);
        Usuario_lbl8.setBounds(390, 60, 150, 50);

        jsMO.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(jsMO);
        jsMO.setBounds(390, 190, 240, 50);

        jsBO.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(jsBO);
        jsBO.setBounds(70, 190, 240, 50);

        jtCom.setColumns(20);
        jtCom.setRows(5);
        jtCom.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        jScrollPane1.setViewportView(jtCom);

        jPanel1.add(jScrollPane1);
        jScrollPane1.setBounds(70, 280, 560, 170);

        txtIDEmEv1.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        jPanel1.add(txtIDEmEv1);
        txtIDEmEv1.setBounds(390, 100, 240, 50);

        getContentPane().add(jPanel1);
        jPanel1.setBounds(350, 90, 700, 500);

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

        btnGuardarEv.setBackground(new java.awt.Color(202, 223, 251));
        btnGuardarEv.setFont(new java.awt.Font("Microsoft YaHei", 0, 18)); // NOI18N
        btnGuardarEv.setForeground(new java.awt.Color(25, 55, 87));
        btnGuardarEv.setText("Guardar");
        btnGuardarEv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarEvActionPerformed(evt);
            }
        });
        getContentPane().add(btnGuardarEv);
        btnGuardarEv.setBounds(600, 610, 190, 50);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnGuardarEvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarEvActionPerformed
        
    }//GEN-LAST:event_btnGuardarEvActionPerformed

    private void btnInicioP1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInicioP1ActionPerformed
        Interfaz ven=new Interfaz();
        ven.setVisible(true);
        dispose();
    }//GEN-LAST:event_btnInicioP1ActionPerformed

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
            java.util.logging.Logger.getLogger(Evaluacion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Evaluacion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Evaluacion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Evaluacion.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Evaluacion().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel ISlbl;
    private javax.swing.JLabel Usuario_lbl10;
    private javax.swing.JLabel Usuario_lbl11;
    private javax.swing.JLabel Usuario_lbl4;
    private javax.swing.JLabel Usuario_lbl5;
    private javax.swing.JLabel Usuario_lbl7;
    private javax.swing.JLabel Usuario_lbl8;
    private javax.swing.JButton btnGuardarEv;
    private javax.swing.JButton btnInicioP1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSpinner jsBO;
    private javax.swing.JSpinner jsMO;
    private javax.swing.JTextArea jtCom;
    private javax.swing.JTextField txtIDEmEv1;
    private javax.swing.JTextField txtIDEv;
    // End of variables declaration//GEN-END:variables
}
