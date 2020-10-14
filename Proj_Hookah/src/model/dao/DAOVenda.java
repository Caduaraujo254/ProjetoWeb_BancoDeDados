/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.bean.venda;
import Connection.ConnectionFactory;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlos Eduardo
 */
public class DAOVenda {
        
    private PreparedStatement statement;
    private String sql;
    
    public void create(venda v) throws SQLException {
        Connection con = ConnectionFactory.getConnection();
        
            sql = "Insert into vendas (id,item,qtd)Values(?,?,?)";
            statement = con.prepareStatement(sql);
            statement.setInt(1,v.getId());
            statement.setString(2,(v.getItem()));
            statement.setInt(3,v.getQtd());
            
            statement.executeUpdate();
            JOptionPane.showMessageDialog(null, "Salvo com sucesso");
    }

        public void update(venda v) throws SQLException {
        Connection con = ConnectionFactory.getConnection();
        
            sql = "update produtos set Quant = Quant - ? where Descricao  = ?";
            statement = con.prepareStatement(sql);
            statement.setInt(1,v.getQtd());
            statement.setString(2,v.getItem());
            
            statement.executeUpdate();
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso");  
    }
        
        public List<venda> lista (venda ven) throws SQLException {
        List<venda> vend = new ArrayList<>();
        
        Connection con = ConnectionFactory.getConnection();
        sql = "select * from vendas";
        statement = con.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();

        while (rs.next()) {
            venda venSaida = new venda(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getInt(3)
            );

            vend.add(venSaida);
        }
        return vend;
    }
}