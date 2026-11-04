/* Alexis 20/10/2026*/





package restaurante;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.time.LocalDate;
import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {

		Scanner teclado = new Scanner(System.in);

		System.out.print("Dime el nombre de un cliente:");

		String nombre_cliente = teclado.nextLine();

		
		
		File fichero = new File("pedidos.txt");
		String texto = "";
		try {
			texto = leerTexto(fichero);
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println(texto);

		
		
		
		
		//Guardar pedido:
		
		File ficheroFinal = new File("pedidosJuan.dat");
		
		
		Pedidos un_pedido =  new Pedidos(0, "Juam", "Calabaza asada", 23.43, LocalDate.now());
		try {
			guardarObjeto(ficheroFinal, un_pedido);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		
		

	}
	 
	
	 public static void guardarObjeto(
	            File fichero, Pedidos pedido) throws IOException {

	        try (ObjectOutputStream salida =
	                     new ObjectOutputStream(
	                             new FileOutputStream(fichero))) {

	            salida.writeObject(pedido);
	        }
	    }
	


	public static String leerTexto(File fichero) throws IOException {

		String texto = "";

		try (BufferedReader br = new BufferedReader(new FileReader(fichero))) {

			String linea;

			while ((linea = br.readLine()) != null) {
				texto = texto + linea + "\n";
			}
		}

		return texto;
	}


}
