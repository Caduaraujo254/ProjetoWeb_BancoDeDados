/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import model.bean.usuario;
import model.dao.DAOUsuario;

/**
 *
 * @author Carlos Eduardo
 */
public class Excluir_Usuario {
    
    public static void main(String[] args) throws SQLException {
        
        DAOUsuario dao = new DAOUsuario();
        usuario u = new usuario();
        
        int id = Integer.parseInt(JOptionPane.showInputDialog("Digite a id do usuario: "));
        u.getId();
        
        dao.delete(u);
        
    }
    
}
