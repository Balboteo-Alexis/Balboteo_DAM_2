// Ejercicio 7 de la Relación 2
// Fecha de creación: 17/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero = 5;

  print(factorial(numero));
}

// Función que calcula y devuelve el factorial de un número
int factorial(int n) {

  int resultado = 1;

  // Multiplicamos todos los números desde 1 hasta n
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }

  return resultado;
}