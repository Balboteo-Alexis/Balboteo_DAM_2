/*
	B) Programa principal.
	EL programa principal es el que supervisa al proceso ATENDER para crear tantos procesos
	como fueran necesarios, según la demanda de los clientes
	Para simplificar vamos a crear 3 procesos de ATENDER, simulando que se abren 3 filas de
	clientes. pero fijaros que se podrían abrir y cerrar filas a voluntad.
	Es importante destacar que el fichero de texto va a ser un recurso compartido para todos los
	procesos
*/

package programa_final;

import java.io.IOException;

public class Principal {

	public static void main(String[] args) {

		try {

			ProcessBuilder proceso1 = new ProcessBuilder(
					"java",
					"-cp",
					"bin",
					"programa_final.Atender",
					"Federico"
			);

			ProcessBuilder proceso2 = new ProcessBuilder(
					"java",
					"-cp",
					"bin",
					"programa_final.Atender",
					"Laura"
			);

			ProcessBuilder proceso3 = new ProcessBuilder(
					"java",
					"-cp",
					"bin",
					"programa_final.Atender",
					"Antonio"
			);

			proceso1.inheritIO();
			proceso2.inheritIO();
			proceso3.inheritIO();

			proceso1.start();
			proceso2.start();
			proceso3.start();

		} catch (IOException e) {

			e.printStackTrace();

		}
	}
}