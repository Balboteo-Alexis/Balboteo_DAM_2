// Ejercicio 3 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  const double pi = 3.141592653589793;
  int anyo = DateTime.now().year;
  bool bisiesto = anyo % 4 == 0 ;

  // final permite calcular el valor al ejecutar y asignarlo una sola vez.
  // Con const fallaría porque el año actual se conoce al ejecutar el programa.
  final int diasDelAnyo;
  if (bisiesto) {
    diasDelAnyo = 366;
  } else {
    diasDelAnyo = 365;
  }

  print('Pi vale $pi.');
  print('El año $anyo tiene $diasDelAnyo días.');
  print('Es bisiesto: $bisiesto');
}
