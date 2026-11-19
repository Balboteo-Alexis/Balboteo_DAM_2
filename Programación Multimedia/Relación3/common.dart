// libreria de metodos ocmunes para la relación de ejercicios
// Fecha de creación: 17/11/2026
// Autor: Alexis Balboteo González

import 'dart:io';

int inputInt(String mensaje){

  bool isNum = false;
  int num = 0;
  while (isNum  == false){

    print(mensaje);

    try {

      num = int.parse(stdin.readLineSync()!).abs();
      isNum = true;


    }on FormatException{
      print("Debe introducir un número entero, por fvor inténtalo de nuevo");
    }
    
  }

  return num;

}


int menu(String menu, int min, int max){

  print(menu);
  int respuesta = 0;
  while(respuesta < min || respuesta > max ){

    respuesta  =inputInt("Introduce la opción a elegir:");
    if (respuesta < min || respuesta > max){
      print("Respuesta no válida, intentalo de nuevo");
    }

  }

  return respuesta;
}