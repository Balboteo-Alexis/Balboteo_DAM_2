// Ejercicio 13 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero = 17;

  if (esPrimo(numero)) {
    print("$numero es un número primo.");
  } else {
    print("$numero no es un número primo.");
  }
}

// Devuelve true si el número es primo y false si no lo es.
bool esPrimo(int n) {
  if (n <= 1) {
    return false;
  }

  for (int divisor = 2; divisor < n; divisor++) {
    if (n % divisor == 0) {
      return false;
    }
  }

  return true;
}