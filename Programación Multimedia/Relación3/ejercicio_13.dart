
 // Ejercicio 13 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';
 import 'common.dart';

 void main() {

   List<String> colores = ["rojo", "verde", "azul"];

   int opcion = 0;

   while (opcion != 5) {

     print("\n1. Incluir color");
     print("2. Eliminar color");
     print("3. Buscar color");
     print("4. Mostrar colores");
     print("5. Salir");

     opcion = inputInt("Elige una opción:");

     switch (opcion) {

       case 1:
         stdout.write("Introduce un color: ");
         String color = stdin.readLineSync()!;

         if (!colores.contains(color)) {
           colores.add(color);
           print("Color añadido");
         } else {
           print("El color ya existe");
         }
         break;

       case 2:
         stdout.write("Color a eliminar: ");
         String color = stdin.readLineSync()!;

         if (colores.remove(color)) {
           print("Color eliminado");
         } else {
           print("El color no existe");
         }
         break;

       case 3:
         stdout.write("Color a buscar: ");
         String color = stdin.readLineSync()!;

         int posicion = colores.indexOf(color);

         if (posicion != -1) {
           print("Color encontrado en posición $posicion");
         } else {
           print("Color no encontrado");
         }
         break;

       case 4:
         print("Lista de colores: $colores");
         print("Total: ${colores.length}");
         break;

       case 5:
         print("Saliendo del programa...");
         break;

       default:
         print("Opción incorrecta");
     }
   }
 }
