/*	A) Programa proceso ATENDER
	Consiste en un simulacion de un empleado que atiende a un cliente. Se elige un
	nombre de cliente aleatoriamente de entre una lista de 6, y se muestra un mensaje
	indicando que se comienza a atender a ese cliente.
	Hay una espera de un tiempo random , entre 30 y 60 segundos y finalmente grabamos en
	un fichero de texto algo parecido a :
	12/10/26 10:43 Federico atendió al cliente Pepe Perez durante 2 minutos
	La grabación en el fichero se hará mediante una función.
	El proceso funcionará en bucle para atender a 10 clientes.
	El nombre del empleado lo recibirá como argumento del programa ( args en main )
*/

package programa_final;

public class Atender {

	public static void main(String[] args) throws InterruptedException {

		// Obtener nombre empleado desde args

		if (args.length < 1) {
			System.out.println("Debes indicar una IP o dominio como argumento.");
			return;
		}

		String empleado = args[0];

		// Crear lista de 6 clientes

		String[] nombres = { "Juan", "Joel", "Pedro", "María", "Curro", "Paco", "Antonio" };

		
		// Repetir 10 veces
		
		for(int i=0; i<10; i++) {
			
			// Elegir cliente aleatorio
			String cliente = nombres[(int) (Math.random()*7)];
			
			// Generar tiempo aleatorio
			
			int tiempo = (int) (Math.random()*5);
			
			
			// Mostrar mensaje  12/10/26 10:43 Federico atendió al cliente Pepe Perez durante 2 minutos
			
			System.out.println(empleado + " atendió al cliente " + cliente + " durante " + tiempo +" segundos");
			
			// Esperar
			
			try {
				
			    Thread.sleep(tiempo * 1000);
			    
			} catch (InterruptedException e) {e.printStackTrace();}
			
			// Llamar a función para guardar en fichero
			
			
			
			
			
			
			
			
		}
		
        
        
        // Mostrar mensaje
        // Esperar
        // Llamar a función para guardar en fichero
		
		
		
	}

}
