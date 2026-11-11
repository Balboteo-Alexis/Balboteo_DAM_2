// Ejercicio 10 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  int n = 10;
  int suma = 0;

  // Vamos sumando los números uno a uno.
  for (int numero = 1; numero <= n; numero++) {
    suma = suma + numero;
  }
  print('La suma del 1 al $n es $suma.');
}
