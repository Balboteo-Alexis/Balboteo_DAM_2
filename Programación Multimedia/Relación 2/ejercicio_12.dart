// Ejercicio 12 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  Map<String, double> temperaturas = {
    "Lunes": 22.5,
    "Martes": 25.0,
    "Miércoles": 19.8,
    "Jueves": 27.3,
    "Viernes": 24.1,
    "Sábado": 21.6,
    "Domingo": 26.4
  };

  mostrarTemperaturaMaxima(temperaturas);
  mostrarTemperaturaMinima(temperaturas);
  mostrarTemperaturaMedia(temperaturas);
}

// Busca y muestra la temperatura máxima y el día en que se produjo.
void mostrarTemperaturaMaxima(Map<String, double> temperaturas) {
  String diaMaximo = temperaturas.keys.first;
  double maxima = temperaturas[diaMaximo]!;

  for (String dia in temperaturas.keys) {
    if (temperaturas[dia]! > maxima) {
      maxima = temperaturas[dia]!;
      diaMaximo = dia;
    }
  }

  print("Temperatura máxima: $maxima °C, el $diaMaximo");
}

// Busca y muestra la temperatura mínima y el día en que se produjo.
void mostrarTemperaturaMinima(Map<String, double> temperaturas) {
  String diaMinimo = temperaturas.keys.first;
  double minima = temperaturas[diaMinimo]!;

  for (String dia in temperaturas.keys) {
    if (temperaturas[dia]! < minima) {
      minima = temperaturas[dia]!;
      diaMinimo = dia;
    }
  }

  print("Temperatura mínima: $minima °C, el $diaMinimo");
}

// Calcula y muestra la temperatura media.
void mostrarTemperaturaMedia(Map<String, double> temperaturas) {
  double suma = 0;

  for (double temperatura in temperaturas.values) {
    suma += temperatura;
  }

  double media = suma / temperaturas.length;

  print("Temperatura media: ${media.toStringAsFixed(2)} °C");
}