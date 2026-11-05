package race_hilos;

public class Principal {

	 public static void main(String[] args) throws InterruptedException {

	        Vendedor[] vendedores = new Vendedor[8];

	        for (int i = 0; i < vendedores.length; i++) {
	            vendedores[i] = new Vendedor("Vendedor " + (i + 1));
	            vendedores[i].start();
	        }

	        int totalReal = 0;

	        for (Vendedor vendedor : vendedores) {
	            vendedor.join();
	            totalReal += vendedor.boletosVendidos;
	        }

	        System.out.println("Ventas realizadas: " + totalReal);
	        System.out.println("Contador global: "
	                + Vendedor.boletosTotalesVendidos);
	    }

}
