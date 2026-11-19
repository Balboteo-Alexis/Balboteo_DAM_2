// Ejercicio 9 de la Relación 2
// Fecha de creación: 19/11/2026
// Autor: Alexis Balboteo González

void main() {
  int numero1 = 17;
  int numero2 = 5;

  print(cociente(numero1, numero2));
  print(resto(numero1, numero2));
}

// Función que calcula el cociente entero
int cociente(int a, int b) {

  int res = (a / b).toInt();
  return res ;


}

// Función que calcula el resto
int resto(int a, int b) {


  return a % b;

}