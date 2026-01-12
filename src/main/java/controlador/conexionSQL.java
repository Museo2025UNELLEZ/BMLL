
package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class conexionSQL {
    // Conexion con la base de datos
    // Ensure the driver converts MySQL "zero" dates to NULL and avoids timezone issues.
    // zeroDateTimeBehavior=CONVERT_TO_NULL prevents exceptions when reading '0000-00-00' values.
    // serverTimezone=UTC avoids serverTimezone warnings; adjust if your server uses a different timezone.
    private static String dbUrl = "jdbc:mysql://localhost:3306/c2771281_bmll?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC";
    private static String dbUsername = "root";
    private static String dbPassword = "";

    public static Connection getConnection(){
        Connection con = null;
        try{
            con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        } catch(SQLException e){
            e.printStackTrace();
        }
        return con;
    }

    // Expose connection details so other classes (e.g. Ajustes) can reuse them
    public static String getDbUrl() {
        return dbUrl;
    }

    public static String getDbUsername() {
        return dbUsername;
    }

    public static String getDbPassword() {
        return dbPassword;
    }
}
