
 // Ejercicio 8 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';
 import 'validaciones.dart';

 void main() {

   stdout.write("Introduce un color hexadecimal: ");
   String color = stdin.readLineSync()!;

   if (isRGB(color)) {
     print("El color $color es válido");
   } else {
     print("El color $color no es válido");
   }

 }
