// Ejercicio 19 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero = 30;

  List<int> primos = generarPrimos(numero);

  print("Números primos entre 1 y $numero: $primos");
}

// Devuelve una lista con los números primos entre 1 y n.
List<int> generarPrimos(int n) {
  List<int> primos = [];

  for (int numero = 2; numero <= n; numero++) {
    if (esPrimo(numero)) {
      primos.add(numero);
    }
  }

  return primos;
}

// Devuelve true si n es primo y false si no lo es.
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