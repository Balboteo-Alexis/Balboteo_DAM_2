// Ejercicio 7 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

import 'dart:math';

void main() {
  double a = 1;
  double b = -3;
  double c = 2;

  if (a == 0) {
    print('Para que sea de segundo grado, a debe ser distinto de cero.');
    return;
  }

  // El discriminante indica si podemos sacar una raíz cuadrada real.
  double discriminante = b * b - 4 * a * c;

  if (discriminante < 0) {
    print('La ecuación no tiene raíces reales.');
  } else if (discriminante == 0) {
    double raiz = -b / (2 * a);
    print('Raíz doble: $raiz');
  } else {
    double raiz1 = (-b + sqrt(discriminante)) / (2 * a);
    double raiz2 = (-b - sqrt(discriminante)) / (2 * a);
    print('Primera raíz: $raiz1');
    print('Segunda raíz: $raiz2');
  }
}
