// Ejercicio 4 de la Relación 2
// Fecha de creación: 12/11/2026
// Autor: Alexis Balboteo González

void main(List<String> args) {
  nombreApellidos("Alexis");
}

// Función que permite que no pongamos apellidos
void nombreApellidos(String nombre, [String? apellidos]) {
  String resultado = nombre + " " + (apellidos ?? "sin apellidos");
  print(resultado);
}
