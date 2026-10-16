package reparaciones;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {

    // 1. GRABAR CLIENTE
    public static void grabar(String nombre, String email, double saldo) throws SQLException {

        String sql = "INSERT INTO clientes "
                + "(nombre, email, saldo, fecha_alta) "
                + "VALUES (?, ?, ?, CURDATE())";

        try (Connection conect = ConexionBD.conectar();
             PreparedStatement sentencia = conect.prepareStatement(sql)) {

            sentencia.setString(1, nombre);
            sentencia.setString(2, email);
            sentencia.setDouble(3, saldo);

            sentencia.executeUpdate();

            System.out.println("Cliente dado de alta correctamente.");
        }
    }

    // 2. BUSCAR CLIENTE POR NOMBRE

public static boolean buscar(String nombre) throws SQLException {

    String sql = "SELECT * FROM clientes WHERE nombre = ?";

    try (Connection conect = ConexionBD.conectar();
         PreparedStatement sentencia = conect.prepareStatement(sql)) {

        sentencia.setString(1, nombre);

        try (ResultSet resultado = sentencia.executeQuery()) {

            return resultado.next();

            }
        }
    }

}


