// Ejercicio 12 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  int a = 48;
  int b = 18;
  print('Buscamos el MCD de $a y $b.');

  // En cada paso de Euclides usamos el divisor y el resto para seguir.
  while (b != 0) {
    int resto = a % b;
    a = b;
    b = resto;
  }
  print('El máximo común divisor es $a.');
}
