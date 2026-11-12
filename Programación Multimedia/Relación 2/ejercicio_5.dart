// Ejercicio 5 de la Relación 2
// Fecha de creación: 12/11/2026
// Autor: Alexis Balboteo González

void main(List<String> args) {
  DateTime horaDesfasada = horaActual(3);

  print(horaDesfasada);
}

// Funcion que devuleve la hora resultante desfasada lo que el parametro asigne
DateTime horaActual(int desfase) {
  DateTime resultado;

  resultado = DateTime.now().add(Duration(hours: desfase));

  return resultado;
}
