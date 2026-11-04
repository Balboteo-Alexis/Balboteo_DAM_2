package restaurante;

import java.time.LocalDate;

public class Pedidos {

	
	

	private int id;
	private String nombre_cliente;
	private String comida;
	private double precio;
	private LocalDate fecha;
	
	
	public Pedidos(int id, String nombre_cliente, String comida, double precio, LocalDate fecha) {
		super();
		this.id = id;
		this.nombre_cliente = nombre_cliente;
		this.comida = comida;
		this.precio = precio;
		this.fecha = fecha;
		
	}
	
	
	
	
	
	
	
	
	
	
}
