// Ejercicio 8 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

import 'dart:io';

void main() {
  stdout.write('Escribe un número entero entre 1 y 10: ');

  // readLineSync devuelve String? porque la entrada puede terminar sin texto.
  String? entrada = stdin.readLineSync();
  if (entrada == null) {
    print('No se ha leído ningún número.');
    return;
  }

  try {
    // Después de comprobar el null, Dart permite usar entrada como String.
    int numero = int.parse(entrada.trim());

    if (numero < 1 || numero > 10) {
      print('El número debe estar entre 1 y 10.');
      return;
    }

    for (int i = 1; i <= 10; i++) {
      print('$numero x $i = ${numero * i}');
    }
  } on FormatException {
    print('Debes escribir un número entero.');
  }
}

// Pruebas manuales:
// 5 -> tabla del 5, termina en 5 x 10 = 50.
// 1 y 10 -> ambos se aceptan.
// 11 -> avisa de que está fuera del rango.
// hola o pulsar Intro sin escribir -> pide un número entero.
