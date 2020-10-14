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
public class Inserir_Usuario {
    
        public static void main(String[] args)throws SQLException, ClassNotFoundException {
        
        DAOUsuario dao = new DAOUsuario();
        usuario u = new usuario();
        
        int Id = Integer.parseInt(JOptionPane.showInputDialog("Digite o id: "));
        u.setId(Id);
        
        String Login = JOptionPane.showInputDialog("Digite o login: ");
        u.setUsuario(Login);
        
        String Senha = JOptionPane.showInputDialog("Digite a senha: ");
        u.setSenha(Senha);
        
        dao.create(u);
        
    }
    
}
   
