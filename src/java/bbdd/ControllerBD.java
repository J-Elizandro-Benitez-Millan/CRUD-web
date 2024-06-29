/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bbdd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author eliza
 */
public class ControllerBD {

    private Connection conexion;
    private PreparedStatement sentenciaPreparada;
    private ResultSet resultado;

    public boolean registroUsuario(String numeroEmpleado, String nombre, String apellidos, String contrasena, String usuarioGenerado) {
        boolean registro = false;

        try {
            conexion = ConexionBaseDeDatos.conectar();
            String consulta = " INSERT INTO usuarios (numeroEmpleado,nombre, apellidos, contrasena, usuarioGenerado) VALUES (?,?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, numeroEmpleado);
            sentenciaPreparada.setString(2, nombre);
            sentenciaPreparada.setString(3, apellidos);
            sentenciaPreparada.setString(4, contrasena);
            sentenciaPreparada.setString(5, usuarioGenerado);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true;
                System.out.println("Alta de Usuario exitosa");
            } else {
                registro = false;
                System.out.println("No se realizo el alta de usuario");
            }
            conexion.close();

        } catch (Exception e) {
            System.out.println("Error en ControllerBD: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error en ControllerBD...SQL " + e);
            }
        }
        System.out.println("Valor del registro " + registro);

        return registro;
    }
    
    public boolean buscarUsuarioRepetidoBD(String numeroEmpleado){
        boolean usuarioRepetido = false;
        
        try {
            conexion = ConexionBaseDeDatos.conectar();
            String consulta = "SELECT numeroEmpleado from usuarios WHERE numeroEmpleado = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, numeroEmpleado);
            resultado = sentenciaPreparada.executeQuery();
            
            if(resultado.next()){
                usuarioRepetido = true;   
            }else{
                usuarioRepetido = false;
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error SQL usuarioRepetido... " + e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
            System.out.println("Error SQL usuarioRepetido... " + e);
                
            }
            
        }
        System.out.println("El valor del usuario Repetido en el Metodo... " + usuarioRepetido);
        return usuarioRepetido;
    }
    
    public boolean buscarUsuarioInicioSesion(String usuario, String contrasena ){
        boolean inicioSesion = false;
        
        try {
            conexion = ConexionBaseDeDatos.conectar();
            String consulta = "SELECT usuarioGenerado,contrasena FROM usuarios WHERE usuarioGenerado = ? AND contrasena = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            sentenciaPreparada.setString(2, contrasena);
           
            resultado = sentenciaPreparada.executeQuery();
            
            if(resultado.next()){
                inicioSesion = true;
            }else{
                inicioSesion = false;
            }
            conexion.close();
            
        } catch (SQLException e) {
            System.out.println("Error en buscar usuario: " + e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error 2do catch de buscar usuario: " + e);
            }
        }
        
        
        
        
        System.out.println("El valor inicio de sesion es: " + inicioSesion);
        return inicioSesion;
        
    }

    public String buscarNombre(String usuario){
        String nombre = null;
        
        try {
            conexion = ConexionBaseDeDatos.conectar();
            String consulta = "SELECT nombre FROM usuarios WHERE usuarioGenerado = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            resultado = sentenciaPreparada.executeQuery();
            
            if(resultado.next()){
                nombre = resultado.getString("nombre");
            }else{
                nombre = null;
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error en try de Buscar nombre: " + e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error en finaly de Buscar nombre: " + e);
            }
            
        }
        System.out.println("Valor de nombre: " + nombre);
        
        
        
        
        
        return  nombre; 
    }
    
    
}
