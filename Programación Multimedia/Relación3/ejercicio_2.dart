// Ejercicio 2 de la Relación 3
// Fecha de creación: 17/11/2026
// Autor: Alexis Balboteo González


import 'common.dart';
import 'dart:math';


void main(List<String> args) {
  
  int randNum = Random().nextInt(99) +1;
  bool guessed = false;
  int contador = 0;
  print("//DEBUG INFORMATION randNum  =  $randNum");

  print("===ADIVINA EL NÚMERO SECRETO === \n");

  while(guessed == false){

    int num = inputInt("Dime un numero: ");
    contador++;
    if(num == randNum){
        
      print("Te has pasado por arriba");
      print("Numero de intentos: $contador");
      guessed = true;

    }else if(num > randNum){
      print("Te has pasado por arriba\n");
    }else{
      print("Te has pasado por abajo");
    }

    


  }

  




}