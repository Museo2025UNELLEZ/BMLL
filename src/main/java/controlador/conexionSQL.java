
package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class conexionSQL {
    // Conexion con la base de datos
    private static String dbUrl = "jdbc:mysql://localhost:3306/c2771281_bmll";
    private static String dbUsername = "root";
    private static String dbPassword = "";

    public static Connection getConnection() throws SQLException
    {
        return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    }
}
