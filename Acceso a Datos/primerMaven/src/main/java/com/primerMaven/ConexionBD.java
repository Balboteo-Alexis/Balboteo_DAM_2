
package com.primerMaven;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

    public static void main(String[] args) {

        String url = "jdbc:sqlite:reparaciones.db";

        try {
            Connection conexion = DriverManager.getConnection(url);

            System.out.println("Conexión a SQLite realizada correctamente.");

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error al conectar: " + e.getMessage());
        }
    }
}
