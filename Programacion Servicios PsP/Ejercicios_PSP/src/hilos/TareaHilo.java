package hilos;



import java.util.Random;

public class TareaHilo implements Runnable {

    private String nombreHilo;
    private int delay;

    public TareaHilo(String nombre) {

        this.nombreHilo = nombre;

        Random random = new Random();

        // Tiempo aleatorio entre 10 y 30 segundos
        this.delay = (random.nextInt(21) + 10) * 1000;

        System.out.println(
                "Creando hilo para " + nombreHilo
                + " con una duración de " + delay / 1000 + " segundos.");
    }

    @Override
    public void run() {

        System.out.println("Atendiendo al cliente: " + nombreHilo);

        try {

            Thread.sleep(delay);

        } catch (InterruptedException e) {

            System.out.println("El hilo de " + nombreHilo + " fue interrumpido.");
        }

        System.out.println(
                "Cliente " + nombreHilo
                + " atendido después de " + delay / 1000 + " segundos.");
    }
}