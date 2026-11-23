
 // Ejercicio 6 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'dart:io';

 void main() {

   stdout.write("Introduce una frase: ");
   String frase = stdin.readLineSync()!;

   // Invertir el orden de las palabras
   List<String> palabras = frase.split(" ");
   String palabrasInvertidas = palabras.reversed.join(" ");

   print("Palabras invertidas: $palabrasInvertidas");

   // Invertir los caracteres
   String fraseInvertida = frase.split("").reversed.join("");

   print("Frase invertida: $fraseInvertida");

   // Comprobar si es un palíndromo
   String fraseLimpia = frase.toLowerCase().replaceAll(" ", "");
   String fraseLimpiaInvertida = fraseLimpia.split("").reversed.join("");

   if (fraseLimpia == fraseLimpiaInvertida) {
     print("La frase es un palíndromo");
   } else {
     print("La frase no es un palíndromo");
   }
 }
