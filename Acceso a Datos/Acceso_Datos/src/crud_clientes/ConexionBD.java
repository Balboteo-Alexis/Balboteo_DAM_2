package crud_clientes;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConexionBD {

	public static Connection conectar() {

		Properties propiedades = new Properties();
		Connection conexion = null;

		try {

			FileInputStream entrada = new FileInputStream("config.properties");
			propiedades.load(entrada);
			entrada.close();

			String ip = propiedades.getProperty("mysql.ip");
			String puerto = propiedades.getProperty("mysql.puerto");
			String nombreBD = propiedades.getProperty("mysql.nombrebd");
			String usuario = propiedades.getProperty("mysql.usuario");
			String password = propiedades.getProperty("mysql.password");

			String url = "jdbc:mysql://" + ip + ":" + puerto + "/" + nombreBD;

			conexion = DriverManager.getConnection(url, usuario, password);

			System.out.println("Conexión realizada correctamente.");


		} catch (IOException e1) {

			System.out.println("Error leyendo config.properties");
			e1.printStackTrace();

		} catch (SQLException e1) {

			System.out.println("Error de conexión con la base de datos");
			e1.printStackTrace();

		}
		return conexion;
		

	}
}
