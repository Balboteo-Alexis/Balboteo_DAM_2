// Ejercicio 18 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

enum Arcoiris { rojo, naranja, amarillo, verde, azul, anil, violeta }

void main() {
  print('Todos los colores: ${Arcoiris.values}');
  print('Primer color: ${Arcoiris.values[0].name}');
  print('Búsqueda de verde: ${Arcoiris.values.byName('verde').name}');

  // Si la búsqueda falla, catch muestra un mensaje y el programa sigue.
  try {
    print(Arcoiris.values.byName('rosa'));
  } catch (error) {
    print('Rosa no está entre los colores del arcoíris.');
  } finally {
    print('La búsqueda ha terminado.');
  }
}
