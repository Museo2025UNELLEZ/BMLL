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
    private String posicion;

    public Libro(String titulo, String autor, String tomo, int n_copias, String posicion) {
        this.titulo = titulo;
        this.autor = autor;
        this.tomo = tomo;
        this.n_copias = n_copias;
        this.posicion = posicion;
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

    public String getPosicion() {
        return posicion;
    }
    
    
    
}

