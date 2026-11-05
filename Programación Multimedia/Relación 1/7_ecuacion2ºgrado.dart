/*
  7- Haz el programa que resuelva las raíces de una ecuación de segundo grado (ax2 + bx + c= 0) 
  a partir de los valores de los coeficientes a, b y c (double). Si las raíces no fueran
  reales, debe mostrar un mensaje que así lo indique.
*/


import 'dart:io';
import 'dart:math';

void main(){

  print('Este programa resuelve ecuaciones de segundo grado.');

  print('Numero referente a "a" en la ecuación: ');
  double numA = double.parse(stdin.readLineSync()!);

  print('Numero referente a "b" en la ecuación: ');
  double numB = double.parse(stdin.readLineSync()!);

  print('Numero referente a "c" en la ecuación: ');
  double numC = double.parse(stdin.readLineSync()!);

  double raiz = (numB*numB - 4*numA*numC);

  if (raiz < 0 ){
    print('La solución es irreal ');

  }else{

    double solRaiz = sqrt(raiz);


    double solucionPositiva = (  -numB + solRaiz   )/(2 * numA);
    double solucionNegativa = (  -numB -  solRaiz  )/(2 * numA);


    print('Solucion positiva: $solucionPositiva');
    print('Solución negativa: $solucionNegativa');

  }





  








}