// Ejercicio 13 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  int dividendo = 37;
  int divisor = 5;
  int cociente = 0;
  int resto = dividendo;

  // Cada vez que cabe el divisor lo restamos y sumamos uno al cociente.
  while (resto >= divisor) {
    resto = resto - divisor;
    cociente = cociente + 1;
  }

  print('Al dividir $dividendo entre $divisor:');
  print('Cociente: $cociente');
  print('Resto: $resto');
  print('Comprobación: $divisor x $cociente + $resto = $dividendo');
}
