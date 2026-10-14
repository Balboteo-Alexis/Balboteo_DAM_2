package crud_clientes;

import java.time.LocalDate;

public class Cliente {

	private double saldo_cuenta;
	private String nombre_completo;
	private String email;
	private LocalDate fecha_alta;
	

	public Cliente(double saldo_cuenta, String nombre_completo, String email) {
		super();
		
		this.saldo_cuenta = saldo_cuenta;
		this.nombre_completo = nombre_completo;
		this.email = email;
		this.fecha_alta = LocalDate.now();
		
		

	}

	public double getSaldo_cuenta() {
		return this.saldo_cuenta;
	}

	public String getNombre_completo() {
		return this.nombre_completo;
	}

	public String getEmail() {
		return this.email;
	}

	public LocalDate getFecha_alta() {
		return this.fecha_alta;
	}

	public void setSaldo_cuenta(double saldo_cuenta) {
		this.saldo_cuenta = saldo_cuenta;
	}

	public void setNombre_completo(String nombre_completo) {
		this.nombre_completo = nombre_completo;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFecha_alta(LocalDate fecha_alta) {
		this.fecha_alta = fecha_alta;
	}



}
