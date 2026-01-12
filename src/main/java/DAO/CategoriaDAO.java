
package DAO;

import Modelo.Categorias;
import controlador.conexionSQL;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.swing.JOptionPane;


public class CategoriaDAO {
    
    public List<Categorias> ListarCategorias() throws SQLException{
        List<Categorias> lista = new ArrayList<>();
        String sql = "SELECT id, nombre FROM categorias";
        
        try(Connection con = conexionSQL.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();){
            
            while(rs.next()){lista.add(new Categorias(rs.getInt("id"),rs.getString("nombre")));}
            
        }catch (Exception e){e.printStackTrace();}
        
     return lista;    
    }
}
