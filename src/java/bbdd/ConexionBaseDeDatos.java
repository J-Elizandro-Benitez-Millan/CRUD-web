/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bbdd;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author eliza
 */
public class ConexionBaseDeDatos {
    private static String url = "jdbc:mysql://127.0.0.1:3306/bd_loggin";
    private static String usuario = "root";
    private static String pass = "Elieli123";
    
    
    public static Connection conectar(){
        Connection conexion = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url,usuario, pass);
        } catch (ClassNotFoundException | SQLException e){
            System.out.println("Error: No se puede conectar a la BBDD " + e);
        }
        
        
        
        return conexion;   
    }

}
