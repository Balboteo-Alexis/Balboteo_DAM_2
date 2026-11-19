// Ejercicio 10 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero = 255;
  int base = 16;

  print(convertir(numero, base));
}

// Función que convierte un número decimal a otra base (2 a 16)
String convertir(int numero,int base ) {

  String resultado = "";
  String letras = "ABCDEF";

  if (base < 2 || base > 16) {
    return "Base no válida";
  }

  if (numero == 0) {
    return "0";
  }

  while (numero > 0) {

    int resto = numero % base;

    if (resto >= 10) {
      resultado = letras[resto - 10] + resultado;
    } else {
      resultado = resto.toString() + resultado;
    }

    numero = numero ~/ base;
  }

  return resultado;
}