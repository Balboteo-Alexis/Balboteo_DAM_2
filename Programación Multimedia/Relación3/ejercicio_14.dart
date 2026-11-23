
 // Ejercicio 14 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';
 import 'common.dart';

 void main() {

   Map<String, String> grupoWhatsapp = {
     "Pepe": "111111111",
     "María": "222222222",
     "Ana": "3333333"
   };

   int opcion = 0;

   while (opcion != 5) {

     print("\n1. Incluir persona");
     print("2. Eliminar persona");
     print("3. Buscar persona");
     print("4. Mostrar componentes del grupo");
     print("5. Salir");

     opcion = inputInt("Elige una opción:");

     switch (opcion) {

       case 1:
         stdout.write("Nombre: ");
         String nombre = stdin.readLineSync()!;

         stdout.write("Teléfono: ");
         String telefono = stdin.readLineSync()!;

         if (!grupoWhatsapp.containsKey(nombre)) {
           grupoWhatsapp[nombre] = telefono;
           print("Persona añadida");
         } else {
           print("La persona ya existe");
         }
         break;

       case 2:
         stdout.write("Nombre a eliminar: ");
         String nombre = stdin.readLineSync()!;

         if (grupoWhatsapp.containsKey(nombre)) {
           grupoWhatsapp.remove(nombre);
           print("Persona eliminada");
         } else {
           print("La persona no existe");
         }
         break;

       case 3:
         stdout.write("Nombre a buscar: ");
         String nombre = stdin.readLineSync()!;

         if (grupoWhatsapp.containsKey(nombre)) {
           print("Teléfono: ${grupoWhatsapp[nombre]}");
         } else {
           print("Persona no encontrada");
         }
         break;

       case 4:
         print("\nComponentes del grupo:");

         grupoWhatsapp.forEach((nombre, telefono) {
           print("$nombre - $telefono");
         });

         print("Total: ${grupoWhatsapp.length}");
         break;

       case 5:
         print("Saliendo del programa...");
         break;

       default:
         print("Opción incorrecta");
     }
   }
 }
