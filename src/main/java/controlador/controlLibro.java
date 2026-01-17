/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import DAO.LibrosDAO;
import Modelo.Libro;
import java.util.List;
import java.sql.Connection;
import java.util.Map;

public class controlLibro {
    private final LibrosDAO dao;
    
    public controlLibro(Connection con){
        this.dao = new LibrosDAO(con);
    }
    
    public List<Libro> obtenerLibros(String titulo){
        return dao.ListarLibros(titulo);
    }

    public List<Libro> obtenerLibrosPorCategoria(int categoriaId){
        return dao.ListarLibrosPorCategoria(categoriaId);
    }
    
    public int eliminarPorId(int id){
        int num = dao.eliminarlibro(id);
        return num;
   }

    public Libro obtenerLibroPorId(int id){
        return dao.obtenerLibroPorId(id);
    }
    
    // Delegar al DAO
    public List<String> listarCategorias(){
        return dao.listarCategorias();  // ✅ usar el objeto dao
    }
    
    public Map<Integer, String> listarCategoriasMap() {
    return dao.listarCategoriasMap();
    }

    public Map<Integer, String> listarEstanteriasMap(){
        return dao.listarEstanteriasMap();
    }

    public List<String> listarEstanterias(){
        return dao.listarEstanterias(); // ✅ usar el objeto dao
    }
    
    public int actualizarLibro(Libro libro){
        return dao.actualizarLibro(libro);
    }

    public List<String> listarEditoriales(){
        return dao.listarEditoriales();
    }

    public List<Libro> obtenerLibrosPorEditorial(String editorial){
        return dao.ListarLibrosPorEditorial(editorial);
    }
    
}
