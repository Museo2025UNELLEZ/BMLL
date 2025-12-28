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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.swing.JOptionPane;

public class LibrosDAO {
    
    private final Connection con;
    
    public LibrosDAO(Connection con){
        this.con = con;
    }
    
// Listar categorías
public List<String> listarCategorias(){
    List<String> lista = new ArrayList<>();
    String sql = "SELECT nombre FROM categorias ORDER BY nombre";

    try (PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
            lista.add(rs.getString("nombre"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return lista;
}

// Listar estanterías
public List<String> listarEstanterias(){
    List<String> lista = new ArrayList<>();
    String sql = "SELECT codigo FROM estanterias ORDER BY codigo";

    try (PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
            lista.add(rs.getString("codigo"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return lista;
}

public Map<Integer, String> listarCategoriasMap() {
    Map<Integer, String> categorias = new HashMap<>();
    String sql = "SELECT id, nombre FROM categorias";
    try (PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
            categorias.put(rs.getInt("id"), rs.getString("nombre"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return categorias;
}

public Map<Integer, String> listarEstanteriasMap() {
    Map<Integer, String> estanterias = new HashMap<>();
    String sql = "SELECT id, codigo FROM estanterias";
    try (PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
            estanterias.put(rs.getInt("id"), rs.getString("codigo"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return estanterias;
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
                Libro l = new Libro();
                l.setId(rs.getInt("id"));
                l.setTitulo(rs.getString("titulo"));
                l.setAutor(rs.getString("autor"));
                l.setTomo(rs.getString("tomo"));
                l.setN_copias(rs.getInt("n_copias"));
                l.setPosicion(rs.getString("posicion"));
                lista.add(l);
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

 public Libro obtenerLibroPorId(int id){
        Libro libro = null;
        String sql = "SELECT * FROM libros WHERE id = ?";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    libro = new Libro();
                    libro.setId(rs.getInt("id"));
                    libro.setTitulo(rs.getString("titulo"));
                    libro.setAutor(rs.getString("autor"));
                    libro.setCategoria_id(rs.getInt("categoria_id"));
                    libro.setIsbn(rs.getString("isbn"));
                    libro.setN_copias(rs.getInt("n_copias"));
                    libro.setEstante_id(rs.getInt("estante_id"));
                    libro.setFila(rs.getInt("fila"));
                    libro.setFecha_publicacion(rs.getDate("fecha_publicacion"));
                    libro.setEditorial(rs.getString("editorial"));
                    libro.setTomo(rs.getString("tomo"));
                    libro.setEdicion(rs.getString("edicion"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return libro;
    }

public int actualizarLibro(Libro libro){
    int res = 0;
    String sql = "UPDATE libros SET titulo=?, autor=?, categoria_id=?, isbn=?, " +
                 "n_copias=?, estante_id=?, fila=?, fecha_publicacion=?, editorial=?, tomo=?, edicion=? " +
                 "WHERE id=?";

    try (PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setString(1, libro.getTitulo());
        ps.setString(2, libro.getAutor());
        ps.setInt(3, libro.getCategoria_id());
        ps.setString(4, libro.getIsbn());
        ps.setInt(5, libro.getN_copias());
        ps.setInt(6, libro.getEstante_id());
        ps.setInt(7, libro.getFila());
        ps.setDate(8, libro.getFecha_publicacion()); // java.sql.Date
        ps.setString(9, libro.getEditorial());
        ps.setString(10, libro.getTomo());
        ps.setString(11, libro.getEdicion());
        ps.setInt(12, libro.getId());

        int filasAfectadas = ps.executeUpdate();
        if (filasAfectadas > 0) {
            res = 1; // éxito
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return res;
}



}
