// Ejercicio 17 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

enum Arcoiris { rojo, naranja, amarillo, verde, azul, anil, violeta }

void main() {
  print('Todos los colores: ${Arcoiris.values}');
  print('Primer color: ${Arcoiris.values[0].name}');
  print('Búsqueda de verde: ${Arcoiris.values.byName('verde').name}');

  // Rosa no existe en el enum. Esta búsqueda provoca un ArgumentError.
  print('Ahora buscamos rosa.');
  print(Arcoiris.values.byName('rosa'));
}
