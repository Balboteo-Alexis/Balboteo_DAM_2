// Ejercicio 16 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero1 = 48;
  int numero2 = 18;

  print("El MCD de $numero1 y $numero2 es ${calcularMCD(numero1, numero2)}");
}

// Calcula el MCD de forma recursiva.
int calcularMCD(int a, int b) {
  if (b == 0) {
    return a;
  }

  return calcularMCD(b, a % b);
}