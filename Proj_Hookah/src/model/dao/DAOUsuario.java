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
import javax.swing.JOptionPane;
import model.bean.usuario;

/**
 * CRUD
 *
 * @author Carlos Eduardo
 */
public class DAOUsuario {

    private PreparedStatement statement;
    private String sql;

    public boolean checkLogin(String login, String senha) throws SQLException {

        Connection con = ConnectionFactory.getConnection();
        ResultSet rs = null;

        boolean check = false;

        sql = "select * from usuarios where login = ? and senha = ?";
        statement = con.prepareStatement(sql);

        statement.setString(1, login);
        statement.setString(2, senha);

        rs = statement.executeQuery();

        if (rs.next()) {

            check = true;
        } else {
            ConnectionFactory.closeConnection(con);
        }
        return check;
    }

    public void create(usuario u) throws SQLException {
        Connection con = ConnectionFactory.getConnection();

        sql = "Insert into usuarios (id,login,senha)Values(?,?,?)";
        statement = con.prepareStatement(sql);
        statement.setInt(1, u.getId());
        statement.setString(2, u.getUsuario());
        statement.setString(3, u.getSenha());

        statement.executeUpdate();
        JOptionPane.showMessageDialog(null, "Usuario salvo com sucesso");
    }

    public void update(usuario u) throws SQLException {
        Connection con = ConnectionFactory.getConnection();

        sql = "update usuarios set login = ?,senha = ? where id  = ?";
        statement = con.prepareStatement(sql);
        statement.setString(1, u.getUsuario());
        statement.setString(2, u.getSenha());
        statement.setInt(3, u.getId());

        statement.executeUpdate();
        JOptionPane.showMessageDialog(null, "Atualizado com sucesso");
    }

    public void delete(usuario u) throws SQLException {
        Connection con = ConnectionFactory.getConnection();

        sql = "delete from usuarios where id  = ?";
        statement = con.prepareStatement(sql);
        statement.setInt(1, u.getId());

        statement.executeUpdate();
        JOptionPane.showMessageDialog(null, "Excluido com sucesso");

    }

    public usuario valida(usuario usu) throws SQLException {

        Connection con = ConnectionFactory.getConnection();
        sql = "select * from usuarios WHERE login = ? AND senha = ?";
        statement = con.prepareStatement(sql);

        statement.setString(1, usu.getUsuario());
        statement.setString(2, usu.getSenha());
        
        ResultSet rs = statement.executeQuery();

        usuario retorno = null;
        while (rs.next()) {
            retorno = new usuario(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3)
            );}
        return retorno;
    }
}
