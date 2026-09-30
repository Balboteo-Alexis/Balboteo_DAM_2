/*
6- Haz un programa en el que, a partir de dos variables enteras, y un String introducidos
por consola que represente un operador, realice solo una de entre las operaciones: suma,
resta, multiplicación, división entera, resto de la división entera. La rama que se ejecute,
dependerá del operador en sí, funcionará como una rudimentaria calculadora
*/


import 'dart:io';

void main(){

  int num1 = 10;
  int num2 = 5;
  String operador ;  
  
  print ('Introduce un operador (+, -, *, /, %):');

  operador = stdin.readLineSync()!;

  print ('El resultado de la operación es: {(num1, num2, operador)}');








}