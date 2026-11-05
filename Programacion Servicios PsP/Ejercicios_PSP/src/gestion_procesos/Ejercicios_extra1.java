package gestion_procesos;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ejercicios_extra1 {

	public static void main(String[] args) {

		if (args.length < 1) {
			System.out.println("Debes indicar una IP o dominio como argumento.");
			return;
		}

		String nombrePrueba = "";

		for (int i = 0; i < args.length; i++) {
			nombrePrueba = nombrePrueba + args[i] + " ";
		}

		ProcessBuilder pb = new ProcessBuilder("java", "-jar", "clientemusical.jar", nombrePrueba);

		try {

			Process p = pb.start();

			BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));

			System.out.println(br.readAllAsString());
			p.waitFor();
			br.close();

			pb = new ProcessBuilder("Python", "frases.py");

			p = pb.start();

			br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			
			System.out.println(br.readAllAsString());
			p.waitFor();
			br.close();			

		} catch (IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}