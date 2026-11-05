package saludos_notificados;

public class Personal implements Runnable {
	
	
	private String nombre;
	
	private String saludo;
	private boolean esJefe;
	private Saludo gestorSaludos;
	
	public Personal(String nombre, String saludo, boolean esJefe, Saludo gestorSaludos) {
		super();
		this.nombre = nombre;
		this.saludo = saludo;
		this.esJefe = esJefe;
		this.gestorSaludos = gestorSaludos;
	}
	
	
	@Override
	public void run() {
		
		
		int numeroRandom = (int) (Math.random() * 3000) ;
		
		try {
			
			Thread.sleep(numeroRandom);
			System.out.println(this.nombre + " llegó.");
			
			gestorSaludos.saludar( nombre, esJefe, saludo);
			
		} catch (InterruptedException e) {

			Thread.currentThread().interrupt();
		}
		
		
		
	}
	
	
	
	
	

}
