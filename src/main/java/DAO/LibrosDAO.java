/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Modelo.Libro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LibrosDAO {
    
    private final Connection con;
    
    public LibrosDAO(Connection con){
        this.con = con;
    }
    
    public List<Libro> ListarLibros(){
        
        List<Libro> lista = new ArrayList<>();
        
        String sql ="SELECT titulo,autor,n_copias,estante_id,tomo FROM libros";
        
        try(PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()){
            
            
            while(rs.next()){
                lista.add(new Libro(
                rs.getString("titulo"),
                rs.getString("autor"),
                rs.getInt("n_copias"),
                rs.getInt("estante_id"),
                rs.getString("tomo")
                ));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return lista;
    }
}
