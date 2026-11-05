package hilos;


import java.util.Scanner;

public class TestHilos {

    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);

        System.out.print("Introduce el nombre del cliente 1: ");
        String cliente1 = teclado.nextLine();

        System.out.print("Introduce el nombre del cliente 2: ");
        String cliente2 = teclado.nextLine();

        System.out.print("Introduce el nombre del cliente 3: ");
        String cliente3 = teclado.nextLine();

        TareaHilo tarea1 = new TareaHilo(cliente1);
        TareaHilo tarea2 = new TareaHilo(cliente2);
        TareaHilo tarea3 = new TareaHilo(cliente3);

        Thread t1 = new Thread(tarea1);
        Thread t2 = new Thread(tarea2);
        Thread t3 = new Thread(tarea3);

        long inicio = System.currentTimeMillis();

        t1.start();
        t2.start();
        t3.start();

        try {

            t1.join();
            t2.join();
            t3.join();

        } catch (InterruptedException e) {

            System.out.println("El hilo principal fue interrumpido.");
        }

        long fin = System.currentTimeMillis();

        double tiempoTotal = (fin - inicio) / 1000.0;

        System.out.println("Todos los clientes han sido atendidos.");
        System.out.println("Tiempo total: " + tiempoTotal + " segundos.");

        teclado.close();
    }
}