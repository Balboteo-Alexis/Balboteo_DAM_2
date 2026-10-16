package reparaciones;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {

		
		Scanner teclado = new Scanner(System.in);
		
		
		System.out.println("Nueva incidencia creada.");
		System.out.println("Digame el nombre del cliente:");
		
		String cliente = teclado.nextLine();
		
		try {
			if (DAO.buscar(cliente) ){
				
				
				System.out.println("Datos de la incidencia: ");
				
				

				System.out.print("Asunto: ");
				String asunto = teclado.nextLine();

				System.out.print("Descripción: ");
				String descripcion = teclado.nextLine();

				
                
				
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
