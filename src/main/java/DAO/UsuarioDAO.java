/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Modelo.Usuario;
import controlador.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    public Usuario login(String usuario, String password) throws SQLException{
        String sql = """
            SELECT
                u.id,
                u.nombre,
                u.apellido,
                u.cedula,
                u.usuario,
                u.is_admin,
            FROM usuarios u
            JOIN roles r ON r.id = u.rol_id
            WHERE u.usuario = ?
              AND u.password = ?
        """;   
        try(Connection con = ConexionDB.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)){
            
           ps.setString(1, usuario);
           ps.setString(2, password);
           
           ResultSet rs = ps.executeQuery();
           
           if(rs.next()){
               return new Usuario(
               rs.getInt("id"),
               rs.getString("nombre"),
               rs.getString("apellido"),
               rs.getString("cedula"),
               rs.getString("usuario"),
               rs.getInt("is_admin")
               );
           }
       }catch (Exception e){
           e.printStackTrace();
       }
       return null;
    }
}
