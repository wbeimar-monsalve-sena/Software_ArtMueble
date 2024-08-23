
package com.mycompany.sof_artmueble.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String URL = "jdbc:mysql://localhost:3306/so_artmueble";
    private static final String USER = "root";
    private static final String PASSWORD = "Luciana.2012";
    
    private static Connection connection;

    public static Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
            } catch (ClassNotFoundException e) {
                throw new SQLException("JDBC Driver no encontrado", e);
            }
        }
        return connection;
    }
}
