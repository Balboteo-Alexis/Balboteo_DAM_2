package crud_clientes;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int opcion = 0;

        do {

            System.out.println("\n===== GESTION DE CLIENTES =====");
            System.out.println("1. Dar de alta cliente");
            System.out.println("2. Buscar cliente");
            System.out.println("3. Actualizar saldo");
            System.out.println("4. Borrar cliente");
            System.out.println("5. Listar clientes");
            System.out.println("6. Salir");
            System.out.print("Elige una opcion: ");

            try {
                opcion = Integer.parseInt(sc.nextLine());

                switch (opcion) {

                    case 1:
                        System.out.print("Nombre: ");
                        String nombre = sc.nextLine();

                        System.out.print("Email: ");
                        String email = sc.nextLine();

                        System.out.print("Saldo inicial: ");
                        double saldo = Double.parseDouble(sc.nextLine());

                        Dao.grabar(nombre, email, saldo);
                        break;

                    case 2:
                        System.out.print("Nombre del cliente: ");
                        nombre = sc.nextLine();

                        Cliente buscado = Dao.buscar(nombre);

                        if (buscado != null) {
                            System.out.println(buscado);
                        } else {
                            System.out.println("Cliente no encontrado.");
                        }
                        break;

                    case 3:
                        System.out.print("Nombre del cliente: ");
                        nombre = sc.nextLine();

                        System.out.print("Cantidad a añadir: ");
                        double cantidad = Double.parseDouble(sc.nextLine());

                        Dao.actualizarSaldo(nombre, cantidad);
                        break;

                    case 4:
                        System.out.print("Nombre del cliente a borrar: ");
                        nombre = sc.nextLine();

                        Dao.borrar(nombre);
                        break;

                    case 5:
                        ArrayList<Cliente> clientes = Dao.listar();

                        if (clientes.isEmpty()) {
                            System.out.println("No hay clientes registrados.");
                        } else {
                            for (Cliente cliente : clientes) {
                                System.out.println(cliente);
                            }
                        }
                        break;

                    case 6:
                        System.out.println("Saliendo del programa...");
                        break;

                    default:
                        System.out.println("Opcion no valida.");
                }

            } catch (SQLException e) {
                System.out.println("Error de base de datos: " + e.getMessage());

            } catch (NumberFormatException e) {
                System.out.println("Debes introducir un numero valido.");
            }

        } while (opcion != 6);

        sc.close();
    }
}