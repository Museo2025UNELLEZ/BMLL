/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import DAO.LibrosDAO;
import Modelo.Libro;
import java.util.List;
import java.sql.Connection;

public class controlLibro {
    private final LibrosDAO dao;
    
    public controlLibro(Connection con){
        this.dao = new LibrosDAO(con);
    }
    
    public List<Libro> obtenerLibros(String titulo){
        return dao.ListarLibros(titulo);
    }
    
}
