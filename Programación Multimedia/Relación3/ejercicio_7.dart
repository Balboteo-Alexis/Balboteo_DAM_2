
 // Ejercicio 7 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';

 void main() {

   stdout.write("Introduce una frase: ");
   String frase = stdin.readLineSync()!;

   stdout.write("Introduce una subcadena: ");
   String subcadena = stdin.readLineSync()!;

   if (frase.contains(subcadena)) {

     int primeraPosicion = frase.indexOf(subcadena);
     int ultimaPosicion = frase.lastIndexOf(subcadena);

     print("La subcadena está contenida en la frase");
     print("Primera posición: $primeraPosicion");
     print("Última posición: $ultimaPosicion");

   } else {

     print("La subcadena no se encuentra en la frase");

   }
 }
