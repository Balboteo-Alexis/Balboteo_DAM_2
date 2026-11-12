// Ejercicio 2 de la Relación 2
// Fecha de creación: 12/11/2026
// Autor: Alexis Balboteo González

void main(List<String> args) {
  mostrarFecha(2);
}

// Función que muestra la fecha y hora actual con desfase
void mostrarFecha(int desfase) {
  var fecha = DateTime.now().add(Duration(hours: desfase));
  print(fecha);
}
