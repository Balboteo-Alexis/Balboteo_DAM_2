// Ejercicio 9 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  // El primer bucle elige la tabla y el segundo escribe sus diez filas.
  for (int numero = 1; numero <= 10; numero++) {
    print('Tabla del $numero');
    for (int i = 1; i <= 10; i++) {
      print('$numero x $i = ${numero * i}');
    }
    print('');
  }
}
