/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.produtos;
import model.dao.DAOProduto;

/**
 *
 * @author Carlos Eduardo
 */
public class ControleProduto {

    static DAOProduto daoProd;

    public ControleProduto() throws SQLException, ClassNotFoundException {
        daoProd = new DAOProduto();
    }

    public List<produtos> lista(produtos pro) throws SQLException {
        List<produtos> prod = new ArrayList<>();
        prod = daoProd.lista(pro);
        return prod;
    }
}
