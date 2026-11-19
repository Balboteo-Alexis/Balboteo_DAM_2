// Ejercicio 18 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numeroTerminos = 10;

  List<int> fibonacci = generarFibonacci(numeroTerminos);

  print("Serie de Fibonacci: $fibonacci");
}

// Devuelve los primeros n términos de la serie de Fibonacci.
List<int> generarFibonacci(int n) {
  List<int> serie = [];

  if (n <= 0) {
    return serie;
  }

  serie.add(0);

  if (n == 1) {
    return serie;
  }

  serie.add(1);

  for (int i = 2; i < n; i++) {
    int siguiente = serie[i - 1] + serie[i - 2];
    serie.add(siguiente);
  }

  return serie;
}