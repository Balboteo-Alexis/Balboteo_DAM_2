package crud_clientes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Dao {

	
//	public static Cliente buscarCliente(String nombre) {
//		
//		Connection conect = ConexionBD.conectar();
//		
//		
//		Cliente buscado;
//		
//		
//		
//		
//		
//		try {
//			conect.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return buscado;
//	}

	public static void grabar(String nombre, String email, double saldo) throws SQLException {

		
		Connection conect = ConexionBD.conectar();
		
		 


	        String sql = "INSERT INTO clientes "
	                + "(nombre, email, saldo, fecha_alta) "
	                + "VALUES (?, ?, ?, CURDATE())";

	        PreparedStatement sentencia = conect.prepareStatement(sql);

	        sentencia.setString(1, nombre);
	        sentencia.setString(2, email);
	        sentencia.setDouble(3, saldo);

	        sentencia.executeUpdate();

	        System.out.println("Cliente dado de alta correctamente.");

	        sentencia.close();
		
		
		
		
	}

}
