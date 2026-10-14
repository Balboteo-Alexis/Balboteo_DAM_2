package crud_clientes;

import java.sql.SQLException;
import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {

		Scanner teclado = new Scanner(System.in);
		int opcion ;
		
		do {

            System.out.println("\n=== MENÚ ===");
            System.out.println("1. Grabar un cliente");
            System.out.println("2. Buscar por nombre");
            System.out.println("3. Actualizar saldo");
            System.out.println("4. Borrar");
            System.out.println("0. Salir");
            System.out.println("===============\n");

            System.out.print("Elige una opción: ");
            opcion = teclado.nextInt();
            teclado.nextLine();

            switch (opcion) {

            case 1:
            	
                System.out.println("Dame los datos para grabar al cliente:");
                System.out.print("Nombre: ");
                String nombre = teclado.nextLine();
                System.out.print("Email: ");
                String email = teclado.nextLine();
                System.out.print("Saldo: ");
                double saldo = teclado.nextDouble();
                
                try {
					Dao.grabar(nombre, email, saldo);
				} catch (SQLException e) {
					e.printStackTrace();
				}
                
                break;

            case 2:
            	
            	
            	
            	
            	
            	
            	
                break;

            case 0:
                System.out.println("Programa terminado.");
                break;

            default:
                System.out.println("Opción incorrecta.");

            }

        } while (opcion != 0);

	}

}
