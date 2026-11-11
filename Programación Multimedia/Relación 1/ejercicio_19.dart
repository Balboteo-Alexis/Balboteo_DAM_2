// Ejercicio 19 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

void main() {
  // int? permite dejar la edad de Luis sin rellenar.
  Map<String, int?> edades = {'Ana': 19, 'Luis': null, 'Eva': 20};

  print('Nombres con edades:');
  edades.forEach((nombre, edad) {
    print('$nombre: ${edad ?? 'edad desconocida'}');
  });

  print('\nSolo nombres:');
  for (String nombre in edades.keys) {
    print(nombre);
  }

  print('\nSolo edades:');
  for (var edad in edades.values) {
    print(edad ?? 'Edad desconocida');
  }
}
