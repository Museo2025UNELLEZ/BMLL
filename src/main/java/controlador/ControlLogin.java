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
