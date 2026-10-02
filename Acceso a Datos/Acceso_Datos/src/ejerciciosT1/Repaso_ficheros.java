/*
 * Importador de usuarios CSV con archivo de configuración
Crea un programa que lea la ruta de un archivo de datos desde una configuración y procese sus registros.

Lee un fichero de propiedades config.properties para obtener la clave data.filepath (por ejemplo, datos/usuarios.csv).

Lee el archivo CSV indicado en esa propiedad. Cada línea del CSV tiene el formato ID,Nombre,Email,Activo (ejemplo: 101,Ana,ana@email.com,true).

Procesa cada fila para filtrar solo los usuarios donde Activo sea true.

Guarda en un archivo usuarios_activos.txt una lista formateada con el formato: [ID] Nombre - Email.

Captura y gestiona adecuadamente las excepciones de E/S (IOException) y posibles archivos no encontrados (FileNotFoundException).
 * 
 */
package ejerciciosT1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Properties;
import java.io.FileNotFoundException;

public class Repaso_ficheros {

	public static void main(String[] args) {

		try {

			Properties propiedades = new Properties();

			FileInputStream archivoConfig = new FileInputStream("config.properties");

			propiedades.load(archivoConfig);

			String rutaCsv = propiedades.getProperty("data.filepath");

			System.out.println("Ruta: " + rutaCsv);

			archivoConfig.close();

			// leer

			FileReader archivoCsv = new FileReader(rutaCsv);
			BufferedReader lector = new BufferedReader(archivoCsv);

			// escribimos el archivo

			FileWriter archivoSalida = new FileWriter("usuarios_activos.txt");
			BufferedWriter escritor = new BufferedWriter(archivoSalida);

			String linea;

			// bucle

			while ((linea = lector.readLine()) != null) {

				String[] datos = linea.split(",");

				if (datos[3].equalsIgnoreCase("true")) {

					String usuarioActivo = "[" + datos[0] + "] " + datos[1] + " - " + datos[2];

					escritor.write(usuarioActivo);
					escritor.newLine();

				}
			}

			lector.close();
			escritor.close();
			
			
			System.out.println("Usuarios activos guardados correctamente.");

		} catch (FileNotFoundException e) {
		    System.out.println("No se ha encontrado uno de los archivos.");
		}catch (IOException e) {
		    System.out.println("Ha ocurrido un error de lectura o escritura.");
		}
		
		
		
		
		
		

	}
}