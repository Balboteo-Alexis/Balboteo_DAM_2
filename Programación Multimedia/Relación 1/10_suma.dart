/*
10- Haz un programa en Dart que calcule la suma de los n primeros números naturales. El
valor de n será inicializado en el propio programa.
*/

import 'dart:io';

void main(){


  print('Dime un número y te dare la suma de los n números naturales:');


  int num = int.parse(stdin.readLineSync()!);


  int cont = 0;
  int sumatorio = 0;
  while(cont != num){

    sumatorio += cont;
    cont++;


  }
  print('La suma final es: $sumatorio');
  




}
