/*
5- Haz un pequeño programa en Dart en el que, a partir de las medidas de los tres lados de
un triángulo (double) con valores asignados en la propia declaración, dictamine si éste es
equilátero, isósceles o escaleno
*/

void main() {
  double lado1 = 5.0;
  double lado2 = 9.0;
  double lado3 = 1.0;

  if (lado1 == lado2 && lado2 == lado3) {
    print("El triángulo es equilátero.");
  } else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
    print("El triángulo es isósceles.");
  } else {
    print("El triángulo es escaleno.");
  }
}