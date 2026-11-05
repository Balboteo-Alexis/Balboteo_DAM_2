package saludos_notificados;

public class Principal {

	public static void main(String[] args) {

		String s = "." + "Buenos días jefe";
		String sJ = "Buenos días empleados";

		Saludo gestor = new Saludo();

		Personal Empleado1 = new Personal("Pepe", s, false, gestor);

		Personal Empleado2 = new Personal("José", s, false, gestor);

		Personal Empleado3 = new Personal("Pedro", s, false, gestor);

		Personal Jefe1 = new Personal("JEFE", sJ, true, gestor);

		Thread hilo1 = new Thread(Empleado1);
		Thread hilo2 = new Thread(Empleado2);
		Thread hilo3 = new Thread(Empleado3);
		Thread hilo4 = new Thread(Jefe1);

		hilo1.start();
		hilo2.start();
		hilo3.start();
		hilo4.start();

	}

}
