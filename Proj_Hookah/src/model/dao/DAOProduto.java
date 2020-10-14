/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import Connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.bean.produtos;

/**
 * CRUD
 *
 * @author Carlos Eduardo
 */
public class DAOProduto {

    private PreparedStatement statement;
    private String sql;

    public void create(produtos p) throws SQLException {
        Connection con = ConnectionFactory.getConnection();

        sql = "Insert into produtos (CodProd,Descricao,Quant,Valor)Values(?,?,?,?)";
        statement = con.prepareStatement(sql);
        statement.setInt(1, p.getCod());
        statement.setString(2, p.getDescricao());
        statement.setInt(3, (p.getQuant()));
        statement.setFloat(4, p.getPreco());

        statement.executeUpdate();
        JOptionPane.showMessageDialog(null, "Salvo com sucesso");

    }

    public void update(produtos p) throws SQLException {
        Connection con = ConnectionFactory.getConnection();

        sql = "update produtos set Descricao = ?,Quant = ?,Valor = ? where CodProd  = ?";
        statement = con.prepareStatement(sql);
        statement.setString(1, p.getDescricao());
        statement.setInt(2, p.getQuant());
        statement.setFloat(3, p.getPreco());
        statement.setInt(4, p.getCod());

        statement.executeUpdate();
        JOptionPane.showMessageDialog(null, "Atualizado com sucesso");
    }

    public void delete(produtos p) throws SQLException {
        Connection con = ConnectionFactory.getConnection();

        sql = "delete from produtos where CodProd  = ?";
        statement = con.prepareStatement(sql);
        statement.setInt(1, p.getCod());

        statement.executeUpdate();
        JOptionPane.showMessageDialog(null, "Excluido com sucesso");
    }

    public List<produtos> lista(produtos pro) throws SQLException {
        List<produtos> prod = new ArrayList<>();

        Connection con = ConnectionFactory.getConnection();
        sql = "select * from produtos";
        statement = con.prepareStatement(sql);
        ResultSet rs = statement.executeQuery();

        while (rs.next()) {
            produtos proSaida = new produtos(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getInt(3),
                    rs.getFloat(4)
            );

            prod.add(proSaida);
        }
        return prod;
    }
}
