/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author Carlos Eduardo
 */
public class ConnectionFactory {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/hookah";
    private static final String LOGIN = "root";
    private static final String SENHA = null;

    //metodo para conexão com banco de dados
    
public static Connection getConnection(){
    try{
        Class.forName(DRIVER);
        try {
            return DriverManager.getConnection(URL, LOGIN, SENHA);
        } catch (SQLException ex) {
            throw new RuntimeException("Erro na conexão!", ex); 
        }
    }   catch (ClassNotFoundException ex) {   
            throw new RuntimeException("Erro na conexão!", ex); 
        }  
    
}
    public static void closeConnection(Connection con){
        if(con!=null){
            try {
                con.close();
            } catch (SQLException ex) {
                throw new RuntimeException("Erro ao sair!", ex);
            }
        }
    }

    public static void closeConnection(Connection con, PreparedStatement statement) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}