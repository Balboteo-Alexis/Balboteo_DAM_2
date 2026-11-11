// Ejercicio 11 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  int n = 5;
  int factorial = 1;

  // El factorial de 5 
  for (int numero = 1; numero <= n; numero++) {
    factorial = factorial * numero;
  }
  print('El factorial de $n es $factorial.');
}
