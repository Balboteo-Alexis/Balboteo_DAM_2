package productor_consumidor;


import java.util.LinkedList;
import java.util.Queue;


public class Buffer {

	private Queue<String> pizzas = new LinkedList<>();
	
	private final int CAPACIDAD = 5;
	private boolean produccionTerminada = false;
	
	
	
	
	
	


public boolean isProduccionTerminada() {
		return produccionTerminada;
	}
public synchronized boolean hayPizzas() {
    return !pizzas.isEmpty();
}


public synchronized void producir(String pizza) {
	
	if(pizzas.size()==CAPACIDAD) {
		try {
			wait();
		} catch (InterruptedException e) {
			 Thread.currentThread().interrupt();
		}
	}
	if(pizzas.size()<CAPACIDAD) {
		
		
		pizzas.offer(pizza);
		System.out.println("Pizza añadida: " + pizza);
		notifyAll();
	}
	
	
	
}


public synchronized String consumir() {
	
	String pizza = null;
	
	if(pizzas.size() == 0) {
		
		try {
			wait();
		} catch (InterruptedException e) {
			Thread.currentThread().interrupt();
		}
	}
	if(!pizzas.isEmpty()) {
		
		pizza = pizzas.poll();
		notifyAll();
		
	}
	
	return pizza;
	
}


public synchronized void finalizarProduccion() {

    produccionTerminada = true;

    notifyAll();

}


}