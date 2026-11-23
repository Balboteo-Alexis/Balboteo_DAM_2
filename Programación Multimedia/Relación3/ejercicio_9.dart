
 // Ejercicio 9 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';
 import 'validaciones.dart';

 void main() {

   stdout.write("Introduce una URL: ");
   String url = stdin.readLineSync()!;

   if (isURL(url)) {
     print("La URL es válida");
   } else {
     print("La URL no es válida");
   }
 }
