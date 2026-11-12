// Ejercicio 3 de la Relación 2
// Fecha de creación: 12/11/2026
// Autor: Alexis Balboteo González

void main(List<String> args) {
  nombreID("Alexis", 32);
}

// funcion que imprime el nombre e id pasados por parametro, sino muestra los asignados por defecto.
void nombreID([String nombre = "desconocido", int id = 999]) {
  String def = '${nombre} : ${id}';

  print(def);
}
