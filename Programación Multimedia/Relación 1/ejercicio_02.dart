// Ejercicio 2 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero = 7;
  double precio = 2.5;
  String lenguaje = 'Dart';
  bool abierto = true;
  dynamic dato = 10;

  // Probamos una operación con cada tipo básico.
  print('Suma: ${numero + 3}');
  print('Precio de dos unidades: ${precio * 2} euros');
  print('Estoy aprendiendo ' + lenguaje);
  print('¿Está cerrado? ${!abierto}');
  print('Dato más uno: ${dato + 1}');
  dato = 'Ahora guardo texto';
  print(dato);

  // La lista va por posición, el mapa por clave y el conjunto evita repetidos.
  List<String> frutas = ['pera', 'manzana'];
  Map<String, int> edades = {'Alexis': 20};
  Set<int> numeros = {1, 2};
  numeros.add(2);
  print('Primera fruta: ${frutas[0]}');
  print('Edad guardada: ${edades['Alexis']}');
  print('Conjunto tras añadir el 2 otra vez: $numeros');

  // Un registro guarda varios datos juntos. $1 es el primer dato.
  var persona = ('Alexis', 20);
  print('Registro: $persona. Nombre: ${persona.$1}');

  print('Entero desde texto: ${int.parse('12')}');
  print('Decimal desde texto: ${double.parse('2.5')}');
  print('Booleano desde texto: ${bool.parse('true')}');
  // Para recuperar una lista o un mapa de un texto se puede usar JSON.
}
