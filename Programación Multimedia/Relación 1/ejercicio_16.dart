// Ejercicio 16 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  List<String> dias = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes'];
  print('Laborables: $dias');

  dias.add('sábado');
  dias.add('domingo');

  // forEach llama al código de dentro una vez por cada día.
  print('Semana completa:');
  dias.forEach((dia) {
    print(dia);
  });

  Map<String, int> edades = {'Ana': 19, 'Luis': 21};
  print('Edades:');
  edades.forEach((nombre, edad) {
    print('$nombre tiene $edad años.');
  });
}
