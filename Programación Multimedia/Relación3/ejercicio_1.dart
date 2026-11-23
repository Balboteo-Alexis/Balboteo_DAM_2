// Ejercicio 1 de la Relación 3
// Fecha de creación: 22/11/2026
// Autor: Alexis Balboteo González

import 'common.dart';

void main() {
  int numero = inputInt("Introduce un número entero:");

  int resultado = sumarNaturales(numero);

  print("La suma de los $numero primeros números naturales es: $resultado");
}

int sumarNaturales(int numero) {
  int suma = 0;

  for (int i = 1; i <= numero; i++) {
    suma += i;
  }

  return suma;
}
