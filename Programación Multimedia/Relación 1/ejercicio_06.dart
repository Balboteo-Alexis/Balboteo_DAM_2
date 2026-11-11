// Ejercicio 6 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

import 'dart:io';

void main() {
  try {
    // parse convierte el texto a entero. Si no puede, salta al catch.
    stdout.write('Primer número entero: ');
    int primero = int.parse((stdin.readLineSync() ?? '').trim());
    stdout.write('Segundo número entero: ');
    int segundo = int.parse((stdin.readLineSync() ?? '').trim());

    stdout.write('Operador (+, -, *, /, %): ');
    String operador = (stdin.readLineSync() ?? '').trim();

    // No podemos dividir ni calcular el resto con divisor cero.
    if (segundo == 0 &&
        (operador == '/' || operador == '~/' || operador == '%')) {
      print('No se puede dividir entre cero.');
      return;
    }

    if (operador == '+') {
      print('Resultado: ${primero + segundo}');
    } else if (operador == '-') {
      print('Resultado: ${primero - segundo}');
    } else if (operador == '*') {
      print('Resultado: ${primero * segundo}');
    } else if (operador == '/' || operador == '~/') {
      print('Cociente entero: ${primero ~/ segundo}');
    } else if (operador == '%') {
      print('Resto: ${primero % segundo}');
    } else {
      print('Operador incorrecto.');
    }
  } 
    on FormatException {
    print('Hay que introducir dos números enteros.');
  }
}
