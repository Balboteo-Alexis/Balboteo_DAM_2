
 // Ejercicio 10 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';
 import 'validaciones.dart';

 void main() {

   stdout.write("Introduce un correo electrónico: ");
   String correo = stdin.readLineSync()!;

   if (isEmail(correo)) {
     print("El correo es válido");
   } else {
     print("El correo no es válido");
   }
 }
