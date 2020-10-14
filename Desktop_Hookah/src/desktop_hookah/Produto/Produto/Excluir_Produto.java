/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package desktop_hookah.Produto.Produto;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import model.bean.produtos;
import model.dao.DAOProduto;

/**
 *
 * @author Carlos Eduardo
 */
public class Excluir_Produto {
    
public static void main(String[] args) throws SQLException {
        
        DAOProduto dao = new DAOProduto();
        produtos p = new produtos();
        
        int cod = Integer.parseInt(JOptionPane.showInputDialog("Digite o codigo do produto: "));
        p.setCod(cod);
        
        dao.delete(p);
        
    }
    
}
