// Ejercicio 15 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero = 5;

  print("El factorial de $numero es ${factorial(numero)}");
}

// Calcula el factorial de forma recursiva.
int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }

  return n * factorial(n - 1);
}