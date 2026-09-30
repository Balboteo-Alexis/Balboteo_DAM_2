package gestion_procesos;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class Metodos_Redirect {

	public static void main(String[] args) throws InterruptedException {

		/*
		 * Un programa java que permita ejecutar subprocesos del sistema operativo, como
		 * por ejemplo ver un directorio
		 * 
		 * El programa debe permitir ejecutar más de un subproceso en bucle, hasta que
		 * indiquemos que queremos terminar.
		 * 
		 * La salida estandar la redirigimos a un fichero llamado salidaX.txt y los
		 * errores a erroresX.txt
		 * 
		 * X sería el nº de proceso que hemos creado
		 * 
		 * Por ejemplo.
		 * 
		 * La primera vez que se ejecuta el programa, nos creará el fichero salida1.txt
		 * 
		 * si el subproceso era ver un directorio el contenido del fichero salida1.txt
		 * será:
		 */

		Scanner teclado = new Scanner(System.in);
		
		
		
		
		

		boolean comprobador = true;

		ArrayList<String> listaArgumentos = new ArrayList<String>();

		String comando = "";
		
		int numeroProceso = 1;

		while (comprobador) {

			boolean subComprobador = true;

			System.out.println(
					"Introduzca todos los argumentos que quiera, escriba un espacio cuando no quiera escribir más.");

			while (subComprobador) {

				System.out.print("Argumento: ");
				listaArgumentos.add(teclado.nextLine());

//						System.out.println(listaArgumentos.getLast());

				if (listaArgumentos.getLast().isBlank()) {
					subComprobador = false;
				}

			}
			
			

			for (int i = 0; i < listaArgumentos.size(); i++) {

				if (!listaArgumentos.get(i).isBlank()) {
					if (listaArgumentos.get(i + 1).isBlank()) {

						comando = comando + listaArgumentos.get(i);
					} else {
						comando = comando + listaArgumentos.get(i) + " ";
					}
				}
			}

			ProcessBuilder pb = new ProcessBuilder("cmd.exe", "/c", comando);

			try {
				
				
				File salida = new File("salida" + numeroProceso + ".txt");
				File errores = new File("errores" + numeroProceso + ".txt");

				pb.redirectOutput(salida);
				pb.redirectError(errores);
				
				
				
				Process p = pb.start();
				p.waitFor();
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}

			System.out.println("Quieres continuar? s/n");
			String var = teclado.nextLine();
			//
			numeroProceso++;
			listaArgumentos.clear();
			comando = "";
			if(var.equals("n")) {
				
				comprobador = false;
			}
			
		}

	};

};