// Ejercicio 6 de la Relación 2
// Fecha de creación: 12/11/2026
// Autor: Alexis Balboteo González

void main(List<String> args) {
  print(sumatorio(10));
}

// Función de sumatorio que recibe un parametro y devuele el resultado del sumatorio.
int sumatorio(int num) {
  int resultado = 0;

  for (int i = 0; i <= num; i++) {
    resultado += i;
  }
  ;

  return resultado;
}
