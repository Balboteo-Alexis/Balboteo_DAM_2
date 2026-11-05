import 'dart:io';

void main() {
  print('Dame un nombre ');

  String? nombre = stdin.readLineSync();

  print('Nombre: $nombre    ');
  stdout.write('Dime un numero:(Si no pones nada por defecto es un 1) ');

  int? numero = int.parse(stdin.readLineSync() ?? '1');

  print(numero);
}
