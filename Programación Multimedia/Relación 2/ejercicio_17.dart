// Ejercicio 17 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int dividendo = 17;
  int divisor = 5;

  print("Cociente: ${calcularCociente(dividendo, divisor)}");
  print("Resto: ${calcularResto(dividendo, divisor)}");
}

// Calcula el cociente mediante restas recursivas.
int calcularCociente(int dividendo, int divisor) {
  if (dividendo < divisor) {
    return 0;
  }

  return 1 + calcularCociente(dividendo - divisor, divisor);
}

// Calcula el resto mediante restas recursivas.
int calcularResto(int dividendo, int divisor) {
  if (dividendo < divisor) {
    return dividendo;
  }

  return calcularResto(dividendo - divisor, divisor);
}