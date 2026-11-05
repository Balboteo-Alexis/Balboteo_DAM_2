package productor_consumidor;

public class Principal {


    public static void main(String[] args) {

    	Buffer buffer = new Buffer();
        
    	
        Productor productor = new Productor(buffer);
        Thread hiloProductor = new Thread(productor);
        hiloProductor.start();
        
        Consumidor consumidor1 = new Consumidor(1,buffer);
        Consumidor consumidor2 = new Consumidor(2,buffer);
        Consumidor consumidor3 = new Consumidor(3,buffer);
        
        Thread hiloConsumidor1 = new Thread(consumidor1);
        Thread hiloConsumidor2 = new Thread(consumidor2);
        Thread hiloConsumidor3 = new Thread(consumidor3);
        hiloConsumidor1.start();
        hiloConsumidor2.start();
        hiloConsumidor3.start();
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

	
	

