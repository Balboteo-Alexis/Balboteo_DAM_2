// Ejercicio 14 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero = 10;

  print("La suma de los números del 1 al $numero es ${sumatorio(numero)}");
}

// Calcula la suma de forma recursiva.
int sumatorio(int n) {
  if (n == 0) {
    return 0;
  }

  return n + sumatorio(n - 1);
}