package acceso_a_datos;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        Properties propiedades = new Properties();

        try {

            FileInputStream entrada = new FileInputStream("config.properties");
            propiedades.load(entrada);

            String ip = propiedades.getProperty("mysql.ip");
            String puerto = propiedades.getProperty("mysql.puerto");
            String nombreBD = propiedades.getProperty("mysql.nombrebd");
            String usuario = propiedades.getProperty("mysql.usuario");
            String password = propiedades.getProperty("mysql.password");

            String url = "jdbc:mysql://" + ip + ":" + puerto + "/" + nombreBD;

            Connection conexion = DriverManager.getConnection(
                    url,
                    usuario,
                    password
            );

            System.out.println("Conexión realizada correctamente.");

            Scanner teclado = new Scanner(System.in);

            int opcion;

            do {

                System.out.println("\n--- MENÚ ---");
                System.out.println("1. Dar de alta un cliente");
                System.out.println("2. Consultar clientes");
                System.out.println("0. Salir");

                System.out.print("Elige una opción: ");
                opcion = teclado.nextInt();
                teclado.nextLine();

                switch (opcion) {

                case 1:
                    altaCliente(conexion, teclado);
                    break;

                case 2:
                    consultarClientes(conexion);
                    break;

                case 0:
                    System.out.println("Programa terminado.");
                    break;

                default:
                    System.out.println("Opción incorrecta.");

                }

            } while (opcion != 0);

            conexion.close();
            teclado.close();

        } catch (IOException e) {

            System.out.println("Error leyendo config.properties");
            e.printStackTrace();

        } catch (SQLException e) {

            System.out.println("Error de conexión con la base de datos");
            e.printStackTrace();

        }

    }

    public static void altaCliente(Connection conexion, Scanner teclado)
            throws SQLException {

        System.out.print("Nombre: ");
        String nombre = teclado.nextLine();

        System.out.print("Email: ");
        String email = teclado.nextLine();

        System.out.print("Saldo: ");
        double saldo = teclado.nextDouble();
        teclado.nextLine();

        String sql = "INSERT INTO clientes "
                + "(nombre, email, saldo, fecha_alta) "
                + "VALUES (?, ?, ?, CURDATE())";

        PreparedStatement sentencia = conexion.prepareStatement(sql);

        sentencia.setString(1, nombre);
        sentencia.setString(2, email);
        sentencia.setDouble(3, saldo);

        sentencia.executeUpdate();

        System.out.println("Cliente dado de alta correctamente.");

        sentencia.close();
    }

    public static void consultarClientes(Connection conexion)
            throws SQLException {

        String sql = "SELECT * FROM clientes";

        PreparedStatement sentencia = conexion.prepareStatement(sql);

        ResultSet resultado = sentencia.executeQuery();

        System.out.println("\n--- CLIENTES ---");

        while (resultado.next()) {

            System.out.println(
                    "Código: " + resultado.getInt("codigo")
                    + " | Nombre: " + resultado.getString("nombre")
                    + " | Email: " + resultado.getString("email")
                    + " | Saldo: " + resultado.getDouble("saldo")
                    + " | Fecha alta: " + resultado.getDate("fecha_alta")
            );

        }

        resultado.close();
        sentencia.close();
    }

}