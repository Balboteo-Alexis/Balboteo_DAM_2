// Ejercicio 14 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

import 'dart:math';

void main() {
  Random azar = Random();

  // nextInt(6) va del 0 al 5. Al sumar 1 obtenemos una cara del dado.
  int cara = azar.nextInt(6) + 1;
  print('Ha salido un $cara.');
}
