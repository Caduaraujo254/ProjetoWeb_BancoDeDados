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
public class Inserir_produto {
    
    public static void main(String[] args)throws SQLException, ClassNotFoundException {


        int quant;
        float valor;
        
        DAOProduto dao = new DAOProduto();
        produtos p = new produtos();
        
        int cod = Integer.parseInt(JOptionPane.showInputDialog("Digite o codigo do produto: "));
        p.setCod(cod);
        
        String nome = JOptionPane.showInputDialog("Digite o nome do produto: ");
        p.setDescricao(nome);
        
        quant = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade comprada: "));
        p.setQuant(quant);
        
        valor = Float.parseFloat(JOptionPane.showInputDialog("Digite o valor do produto: "));
        p.setPreco(valor);
        
        dao.create(p);
        
    }
    
}



