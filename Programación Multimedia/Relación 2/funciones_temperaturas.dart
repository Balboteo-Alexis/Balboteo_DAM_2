// Ejercicio 20 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

double temperaturaMaxima(List<double> temperaturas) {
  double maxima = temperaturas[0];

  for (double temperatura in temperaturas) {
    if (temperatura > maxima) {
      maxima = temperatura;
    }
  }

  return maxima;
}

double temperaturaMinima(List<double> temperaturas) {
  double minima = temperaturas[0];

  for (double temperatura in temperaturas) {
    if (temperatura < minima) {
      minima = temperatura;
    }
  }

  return minima;
}

double temperaturaMedia(List<double> temperaturas) {
  double suma = 0;

  for (double temperatura in temperaturas) {
    suma += temperatura;
  }

  return suma / temperaturas.length;
}