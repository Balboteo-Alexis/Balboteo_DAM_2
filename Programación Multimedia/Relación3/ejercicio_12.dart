
 // Librería de validaciones - Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 // Validar color RGB hexadecimal
 bool isRGB(String color) {
   RegExp expresion = RegExp(
     r'^#([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$'
   );

   return expresion.hasMatch(color);
 }

 // Validar URL
 bool isURL(String url) {
   RegExp expresion = RegExp(
     r'^https?://[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}(:[0-9]+)?(/[^\s]*)?$'
   );

   return expresion.hasMatch(url);
 }

 // Validar correo electrónico
 bool isMail(String correo) {
   RegExp expresion = RegExp(
     r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
   );

   return expresion.hasMatch(correo);
 }

 // Validar DNI español
 bool isDNI(String dni) {

   dni = dni.toUpperCase();

   RegExp expresion = RegExp(r'^[0-9]{8}[A-Z]$');

   if (!expresion.hasMatch(dni)) {
     return false;
   }

   String letras = "TRWAGMYFPDXBNJZSQVHLCKE";

   int numero = int.parse(dni.substring(0, 8));

   int resto = numero % 23;

   return dni[8] == letras[resto];
 }
