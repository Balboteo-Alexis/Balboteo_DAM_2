package productor_consumidor;

public class Consumidor implements Runnable {

    private int id;
    private Buffer buffer;

    public Consumidor(int id, Buffer buffer) {
        this.id = id;
        this.buffer = buffer;
    }

    @Override
    public void run() {

    	
    	while(!buffer.isProduccionTerminada() || buffer.hayPizzas()) {
    		

        	String pizza = buffer.consumir();
        	if (pizza != null) {

                System.out.println("Repartidor " + id
                        + " retira una pizza " + pizza);
                
                try {
    				int pausa = (int) (Math.random()*3000);
    			    Thread.sleep(pausa);

    			} catch (InterruptedException e) {
    			    Thread.currentThread().interrupt();
    			    
    			}
        	}
    	
    	}
    }
}
