
 // Ejercicio 17 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'package:test/test.dart';
 import 'package:proyecto_testing/validaciones.dart';

 void main() {

   test("Validar URL", () {
     expect(isURL("https://www.google.com"), true);
   });

   test("Validar correo", () {
     expect(isEmail("ejemplo@gmail.com"), true);
   });

   test("Validar DNI", () {
     expect(isDNI("12345678Z"), true);
   });

 }
