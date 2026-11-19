// Ejercicio 14 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main(List<String> args) {
  print(sumatorio(10));
}

// Función recursiva que suma los números desde 0 hasta num
int sumatorio(int num) {
  if (num == 0) {
    return 0;
  }

  return num + sumatorio(num - 1);
}
