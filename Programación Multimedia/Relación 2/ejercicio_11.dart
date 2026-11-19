// Ejercicio 11 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  List<double> temperaturas = [22.5, 25.0, 19.8, 27.3, 24.1, 21.6, 26.4];

  print("Temperatura máxima: ${temperaturaMaxima(temperaturas)} °C");
  print("Temperatura mínima: ${temperaturaMinima(temperaturas)} °C");
  print("Temperatura media: ${temperaturaMedia(temperaturas).toStringAsFixed(2)} °C");
}

// Devuelve la temperatura máxima de la lista.
double temperaturaMaxima(List<double> temperaturas) {
  double maxima = temperaturas[0];

  for (double temperatura in temperaturas) {
    if (temperatura > maxima) {
      maxima = temperatura;
    }
  }

  return maxima;
}

// Devuelve la temperatura mínima de la lista.
double temperaturaMinima(List<double> temperaturas) {
  double minima = temperaturas[0];

  for (double temperatura in temperaturas) {
    if (temperatura < minima) {
      minima = temperatura;
    }
  }

  return minima;
}

// Devuelve la media de las temperaturas de la lista.
double temperaturaMedia(List<double> temperaturas) {
  double suma = 0;

  for (double temperatura in temperaturas) {
    suma += temperatura;
  }

  return suma / temperaturas.length;
}