package saludos_notificados;

public class Saludo {
	
	
	private boolean jefeHaSaludado = false ;
	
	public void saludar(String nombre, boolean esJefe, String saludo) {
		
		synchronized (this) {
			
			
			if (esJefe) {
				System.out.println(nombre + ": "+ saludo);
				jefeHaSaludado = true;
				notifyAll();
								
			}else {
				
				if(!jefeHaSaludado) {
					
					try {
						
						wait();
						
					} catch (InterruptedException e) {

						Thread.currentThread().interrupt();
					}
					
					
					
				}
				
				
				System.out.println(nombre + saludo);
				
			}
			
		}
		
		
		
		
	}
	
	








}
	
	
	
	
	
	
	


