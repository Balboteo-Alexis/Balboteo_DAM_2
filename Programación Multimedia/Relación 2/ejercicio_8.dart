// Ejercicio 8 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero1 = 48;
  int numero2 = 18;

  print(mcd(numero1, numero2));
}

// Función que calcula el MCD mediante el algoritmo de Euclides
int mcd(int a, int b) {

  while (b != 0) {

    int resto = a % b;

    a=b;
    b=resto;
    
  }

  return a;
}