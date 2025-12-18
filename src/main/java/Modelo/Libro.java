/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Admin
 */
public class Libro {
    private String titulo;
    private String autor;
    private int n_copias;
    private int estante_id;
    private String tomo;

    public Libro(String titulo, String autor, int n_copias, int estante_id, String tomo) {
        this.titulo = titulo;
        this.autor = autor;
        this.n_copias = n_copias;
        this.estante_id = estante_id;
        this.tomo = tomo;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public int getN_copias() {
        return n_copias;
    }

    public int getEstante_id() {
        return estante_id;
    }

    public String getTomo() {
        return tomo;
    }
    
    
    
}

