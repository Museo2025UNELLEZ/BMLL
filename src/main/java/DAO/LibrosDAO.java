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
import javax.swing.JOptionPane;

public class LibrosDAO {
    
    private final Connection con;
    
    public LibrosDAO(Connection con){
        this.con = con;
    }
    
public List<Libro> ListarLibros(String titulo){
    List<Libro> lista = new ArrayList<>();

    StringBuilder sql = new StringBuilder(
        "SELECT l.id, l.titulo, l.autor, l.n_copias, l.tomo, " +
        "CONCAT(e.codigo, '-', e.n_filas) AS posicion " +
        "FROM libros l " +
        "JOIN estanterias e ON l.estante_id = e.id " +
        "WHERE 1=1"
    ); // Cambio de la sentencia sql para incluir el codigo del estante con la fila

    // Buscar/filtrar por titulo y limita los resultados a 50
    
    if (titulo != null && !titulo.trim().isEmpty()) {
        sql.append(" AND l.titulo LIKE ?  LIMIT 50");
    } 

    try (PreparedStatement ps = con.prepareStatement(sql.toString())) {
        if (titulo != null && !titulo.trim().isEmpty()) {
            ps.setString(1, "%" + titulo + "%");
        }

        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                lista.add(new Libro(
                    rs.getInt("id"),
                    rs.getString("titulo"),
                    rs.getString("autor"),
                    rs.getString("tomo"),
                    rs.getInt("n_copias"),
                    rs.getString("posicion")
                ));
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return lista;
}
public int eliminarlibro(int id){
    int res = 0;
    StringBuilder sql = new StringBuilder("DELETE FROM libros WHERE id = ?");
    
    try(PreparedStatement ps = con.prepareStatement(sql.toString())){
        ps.setInt(1,id);
        int filasAfectadas = ps.executeUpdate();
        
        if(filasAfectadas>0){
            res = 1; 
        }
        else{
            res=0;
        }
        
    }catch(SQLException e){
        e.printStackTrace();
    }
        return res;
}


}
