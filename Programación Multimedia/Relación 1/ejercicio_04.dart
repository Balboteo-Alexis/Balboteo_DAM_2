// Ejercicio 4 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  // String? permite guardar un texto o null, que significa que falta el dato.
  String? nombre;
  print('Nombre al empezar: $nombre');

  // ?? muestra un texto alternativo mientras falte el nombre.
  print('Nombre para mostrar: ${nombre ?? 'Desconocido'}');

  // ??= solo pone el valor si la variable sigue siendo null.
  nombre ??= 'Alexis';
  print('Nombre guardado: $nombre');
  print('Número de letras: ${nombre.length}');

  // ?. devuelve null si falta el texto, en lugar de consultar su longitud.
  Map<String, String> apodos = {'Ana': 'Ani'};
  String? apodo = apodos['Alexis'];
  print('Longitud del apodo: ${apodo?.length}');
}
