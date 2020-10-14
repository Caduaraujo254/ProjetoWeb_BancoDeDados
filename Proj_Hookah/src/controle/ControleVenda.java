/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.venda;
import model.dao.DAOVenda;

/**
 *
 * @author Carlos Eduardo
 */
public class ControleVenda {

    static DAOVenda daoVend;

    public ControleVenda() throws SQLException, ClassNotFoundException {
        daoVend = new DAOVenda();
    }

    public List<venda> lista(venda ven) throws SQLException {
        List<venda> vend = new ArrayList<>();
        vend = daoVend.lista(ven);
        return vend;
    }

}
