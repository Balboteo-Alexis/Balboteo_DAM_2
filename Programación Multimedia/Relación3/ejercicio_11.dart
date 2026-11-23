
 // Ejercicio 11 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';
 import 'validaciones.dart';

 void main() {

   stdout.write("Introduce un DNI: ");
   String dni = stdin.readLineSync()!;

   if (isDNI(dni)) {
     print("El DNI es válido");
   } else {
     print("El DNI no es válido");
   }
 }
