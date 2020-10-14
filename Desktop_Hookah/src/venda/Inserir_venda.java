/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package venda;

import java.sql.SQLException;
import javax.swing.JOptionPane;
import model.bean.venda;
import model.dao.DAOVenda;

/**
 *
 * @author Carlos Eduardo
 */
public class Inserir_venda {
    
     public static void main(String[] args)throws SQLException, ClassNotFoundException {


        int id;
        int num;
        int qtd;
        String item;
        
        DAOVenda dao = new DAOVenda();
        venda v = new venda();
        
        id = Integer.parseInt(JOptionPane.showInputDialog("Digite a id de sequencia: "));
        v.setId(id);
        
        item = JOptionPane.showInputDialog("Digite o item comprado: ");
        v.setItem(item);
        
        qtd = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade vendida: "));
        v.setQtd(qtd);
        
        dao.create(v);
        dao.update(v);   
    }  
}
