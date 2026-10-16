package crud_clientes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dao {

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
    public static Cliente buscar(String nombre) throws SQLException {

        String sql = "SELECT * FROM clientes WHERE nombre = ?";

        try (Connection conect = ConexionBD.conectar();
             PreparedStatement sentencia = conect.prepareStatement(sql)) {

            sentencia.setString(1, nombre);

            try (ResultSet resultado = sentencia.executeQuery()) {

                if (resultado.next()) {

                    Cliente buscado = new Cliente(
                            resultado.getInt("codigo"),
                            resultado.getString("nombre"),
                            resultado.getString("email"),
                            resultado.getDouble("saldo")
                            
                    );

                    return buscado;
                }
            }
        }

        return null;
    }

    // 3. AÑADIR UNA CANTIDAD AL SALDO
    public static void actualizarSaldo(String nombre, double cantidad) throws SQLException {

        String sql = "UPDATE clientes SET saldo = saldo + ? WHERE nombre = ?";

        try (Connection conect = ConexionBD.conectar();
             PreparedStatement sentencia = conect.prepareStatement(sql)) {

            sentencia.setDouble(1, cantidad);
            sentencia.setString(2, nombre);

            int filas = sentencia.executeUpdate();

            if (filas > 0) {
                System.out.println("Saldo actualizado correctamente.");
            } else {
                System.out.println("No se ha encontrado el cliente.");
            }
        }
    }

    // 4. BORRAR CLIENTE
    public static void borrar(String nombre) throws SQLException {

        String sql = "DELETE FROM clientes WHERE nombre = ?";

        try (Connection conect = ConexionBD.conectar();
             PreparedStatement sentencia = conect.prepareStatement(sql)) {

            sentencia.setString(1, nombre);

            int filas = sentencia.executeUpdate();

            if (filas > 0) {
                System.out.println("Cliente eliminado correctamente.");
            } else {
                System.out.println("No se ha encontrado el cliente.");
            }
        }
    }

    // 5. CONSULTAR TODOS LOS CLIENTES
    public static ArrayList<Cliente> listar() throws SQLException {

        ArrayList<Cliente> clientes = new ArrayList<>();

        String sql = "SELECT * FROM clientes";

        try (Connection conect = ConexionBD.conectar();
             PreparedStatement sentencia = conect.prepareStatement(sql);
             ResultSet resultado = sentencia.executeQuery()) {

            while (resultado.next()) {

                Cliente cliente = new Cliente(
                        resultado.getInt("codigo"),
                        resultado.getString("nombre"),
                        resultado.getString("email"),
                        resultado.getDouble("saldo")
                );

                clientes.add(cliente);
            }
        }

        return clientes;
    }
}
