// Ejercicio 20 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

import 'funciones_temperaturas.dart';

void main() {
  List<double> temperaturas = [22.5, 25.0, 19.8, 27.3, 24.1, 21.6, 26.4];

  print("Temperatura máxima: ${temperaturaMaxima(temperaturas)} °C");
  print("Temperatura mínima: ${temperaturaMinima(temperaturas)} °C");
  print(
    "Temperatura media: "
    "${temperaturaMedia(temperaturas).toStringAsFixed(2)} °C",
  );
}