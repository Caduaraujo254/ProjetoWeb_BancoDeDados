/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.sql.SQLException;
import model.bean.usuario;
import model.dao.DAOUsuario;

/**
 *
 * @author Carlos Eduardo
 */
public class ControleUsuario {

    static DAOUsuario daoUsu;

    public ControleUsuario() throws SQLException, ClassNotFoundException {
        daoUsu = new DAOUsuario();
    }

    public usuario valida(usuario usu) throws SQLException {
        usu = daoUsu.valida(usu);
        return usu;
    }
}
