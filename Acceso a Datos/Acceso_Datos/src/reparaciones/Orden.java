package reparaciones;

import java.time.LocalDate;

public class Orden {

	private int codigo_incidencia;
	private  int codigo_cliente;
	private  String asunto;
	private  String descripcion;
	private  LocalDate fechaApertura;
	private  int codigoTecnico;
	private  String observaciones;
	private  LocalDate fecha_cierre;
	private  double importe;
	
	
	
	public Orden(int codigo_cliente, String asunto, String descripcion) {
		super();
		this.codigo_cliente = codigo_cliente;
		this.asunto = asunto;
		this.descripcion = descripcion;
		this.fechaApertura = LocalDate.now();
		
	}
	
	
	
	
	
	
	
}
