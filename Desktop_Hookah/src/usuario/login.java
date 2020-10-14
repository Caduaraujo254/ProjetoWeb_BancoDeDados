/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import model.dao.DAOUsuario;

/**
 *
 * @author Carlos Eduardo
 */
public class login {
    public static void main(String[] args)throws SQLException, ClassNotFoundException {
        
        DAOUsuario dao = new DAOUsuario();
        
        String Login = JOptionPane.showInputDialog("Digite o login: ");
        
        String Senha = JOptionPane.showInputDialog("Digite a senha: ");
        
        if (dao.checkLogin(Login, Senha)){
           
            JOptionPane.showMessageDialog(null," conectado com sucesso!"); 
        }
        else {
            JOptionPane.showMessageDialog(null,"login ou senha incorretos: ");
        }
        
        
    }
    
}
