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
public class Alterar_Usuario {
    
        public static void main(String[] args)throws SQLException, ClassNotFoundException {
        
        usuario u = new usuario ();
        DAOUsuario dao = new DAOUsuario();

         int id = Integer.parseInt(JOptionPane.showInputDialog("Digite o id do usuario: "));
         u.setId(id);
         
         String login = JOptionPane.showInputDialog("Digite o novo nome de usuario: ");
         u.setUsuario(login);
         
         String senha = JOptionPane.showInputDialog("Digite a nova senha: ");
         u.setSenha(senha);

         dao.update(u);
    }
    
}
