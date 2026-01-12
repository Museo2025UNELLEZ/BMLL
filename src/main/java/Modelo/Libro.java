/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Libro {
    private int id;
    private String titulo;
    private String autor;
    private int n_copias;
    private int estante_id;
    private String tomo;
    private String posicion;
    
    // Nuevos campos
    private int categoria_id;
    private String isbn;
    private int fila;
    private Date fecha_publicacion;
    private String editorial;
    private String edicion; 

    public Libro() {}

    public Libro(int id, String titulo, String autor, int n_copias, int estante_id, String tomo, String posicion, int categoria_id, String isbn, int fila, Date fecha_publicacion, String editorial, String edicion) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.n_copias = n_copias;
        this.estante_id = estante_id;
        this.tomo = tomo;
        this.posicion = posicion;
        this.categoria_id = categoria_id;
        this.isbn = isbn;
        this.fila = fila;
        this.fecha_publicacion = fecha_publicacion;
        this.editorial = editorial;
        this.edicion = edicion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getN_copias() {
        return n_copias;
    }

    public void setN_copias(int n_copias) {
        this.n_copias = n_copias;
    }

    public int getEstante_id() {
        return estante_id;
    }

    public void setEstante_id(int estante_id) {
        this.estante_id = estante_id;
    }

    public String getTomo() {
        return tomo;
    }

    public void setTomo(String tomo) {
        this.tomo = tomo;
    }

    public String getPosicion() {
        return posicion;
    }

    public void setPosicion(String posicion) {
        this.posicion = posicion;
    }

    public int getCategoria_id() {
        return categoria_id;
    }

    public void setCategoria_id(int categoria_id) {
        this.categoria_id = categoria_id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getFila() {
        return fila;
    }

    public void setFila(int fila) {
        this.fila = fila;
    }

    public Date getFecha_publicacion() {
        return fecha_publicacion;
    }

    public void setFecha_publicacion(Date fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
    }

    public String getEditorial() {
        return editorial;
    }

    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    public String getEdicion() {
        return edicion;
    }

    public void setEdicion(String edicion) {
        this.edicion = edicion;
    }
    
    
}
