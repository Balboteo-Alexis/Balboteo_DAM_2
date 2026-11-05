package productor_consumidor;


public class Productor implements Runnable {

	
	private Buffer buffer;
	
	public Productor(Buffer buffer) {
		
		this.buffer= buffer;
		
	}
	
	
	
	@Override
	public void run() {

		
		
		String[] nombres = {
	            "Margarita",
	            "Barbacoa",
	            "Napolitana",
	            "Pepperoni",
	            "Cuatro quesos"
	        };
		
		for (int i = 0; i < 20; i++) {

			try {
				int pausa = (int) (Math.random()*3000);
			    Thread.sleep(pausa);

			} catch (InterruptedException e) {
			    Thread.currentThread().interrupt();
			    
			}
			
			
			int posicion = (int) (Math.random()*5);

			String pizza = nombres[posicion];

		    buffer.producir(pizza);

		}
		
		buffer.finalizarProduccion();
		
		System.out.println("El cocinero ha terminado su trabajo.");
		

		
		
	}




	
	
	
	
	
	
}
