// Ejercicio 20 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  Map<String, double> temperaturas = {
    'lunes': 20,
    'martes': 24,
    'miércoles': 24,
    'jueves': 18,
    'viernes': 22,
    'sábado': 21,
    'domingo': 23,
  };

  // Usamos el primer valor como punto de partida para ambos extremos.
  double mayor = temperaturas.values.first;
  double menor = temperaturas.values.first;
  double suma = 0;

  for (double temperatura in temperaturas.values) {
    if (temperatura > mayor) {
      mayor = temperatura;
    }
    if (temperatura < menor) {
      menor = temperatura;
    }
    suma = suma + temperatura;
  }

  // Mostramos todos los días que alcanzaron cada extremo.
  temperaturas.forEach((dia, temperatura) {
    if (temperatura == mayor) {
      print('Máxima: $dia, $mayor °C');
    }
    if (temperatura == menor) {
      print('Mínima: $dia, $menor °C');
    }
  });

  double media = suma / temperaturas.length;
  print('Media: ${media.toStringAsFixed(2)} °C');
}
