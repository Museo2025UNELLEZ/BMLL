/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import Modelo.Usuario;
import DAO.UsuarioDAO;
import java.sql.SQLException;
        
public class ControlLogin {
    
    private final UsuarioDAO usuDAO = new UsuarioDAO();
    
    public Usuario autenticar(String usuario, String password) throws SQLException{
        return usuDAO.login(usuario, password);
    }
     
}
