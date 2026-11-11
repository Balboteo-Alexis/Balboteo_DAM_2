// Ejercicio 5 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  double lado1 = 5;
  double lado2 = 5;
  double lado3 = 3;

  print('Lados: $lado1, $lado2 y $lado3.');

  // Dos lados juntos siempre tienen que medir más que el tercero.
  if (lado1 <= 0 ||
      lado2 <= 0 ||
      lado3 <= 0 ||
      lado1 + lado2 <= lado3 ||
      lado1 + lado3 <= lado2 ||
      lado2 + lado3 <= lado1) {
    print('Estas medidas no forman un triángulo.');
  } else if (lado1 == lado2 && lado2 == lado3) {
    print('El triángulo es equilátero.');
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print('El triángulo es isósceles.');
  } else {
    print('El triángulo es escaleno.');
  }
}
