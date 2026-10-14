package race_hilos;

public class Vendedor extends Thread {
	
	
	
	public static int boletosTotalesVendidos = 0;
    public int boletosVendidos = 0;

    
    public Vendedor(String nombre) {
        super(nombre);
    }

    public static synchronized int obtenerBoleto() {
    	
    	int res;
    	
        if (boletosTotalesVendidos >= 100) {
            res =  -1;
        }
        else {
        	res=boletosTotalesVendidos++;
        }

        

        return res;
    }

    public void venderBoleto() {

        int boleto = obtenerBoleto();

        if (boleto == -1) {
            return;
        }

        boletosVendidos++;

        System.out.println(getName() + " vende el boleto " + boleto);
    }

    @Override
    public void run() {

        while (true) {

            int boleto = obtenerBoleto();

            if (boleto == -1) {
                break;
            }

            boletosVendidos++;

            System.out.println(getName() + " vende el boleto " + boleto);
        }
    }
	
	
	

}
