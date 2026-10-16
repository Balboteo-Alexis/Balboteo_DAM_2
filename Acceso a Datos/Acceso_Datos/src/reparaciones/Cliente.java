package reparaciones;

import java.time.LocalDate;

public class Cliente {

    private int codigo;
    private String nombre;
    private String email;
    private double saldo;
    private LocalDate fechaAlta;

    public Cliente(int codigo, String nombre, String email,
                   double saldo) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.email = email;
        this.saldo = saldo;
        this.fechaAlta = LocalDate.now();
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public LocalDate getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(LocalDate fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    @Override
    public String toString() {
        return "Codigo: " + codigo
                + " | Nombre: " + nombre
                + " | Email: " + email
                + " | Saldo: " + saldo
                + " | Fecha alta: " + fechaAlta;
    }
}

