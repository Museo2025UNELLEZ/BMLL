/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author luise
 */
public class Usuario {
    private int id;
    private String nombre;
    private String apellido;
    private String cedula;
    private String usuario;
    private String password;
    private int is_admin;

    public Usuario(int id, String nombre, String apellido, String cedula, String usuario, String password, int rol_id, int is_admin) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.cedula = cedula;
        this.usuario = usuario;
        this.password = password;
        this.is_admin = is_admin;
    }

    public Usuario(int aInt, String string, String string0, String string1, String string2, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getCedula() {
        return cedula;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getPassword() {
        return password;
    }

    public int getIs_admin() {
        return is_admin;
    }
    
    
}
