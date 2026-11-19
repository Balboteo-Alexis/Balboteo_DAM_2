// Ejercicio 3 de la Relación 3
// Fecha de creación: 17/11/2026
// Autor: Alexis Balboteo González


import 'dart:io';

bool isMinus(String str){

  bool isMinus = false;
  if(str== str.toLowerCase()){
    isMinus = true;

  }

  return isMinus;
}
bool isMayus(String str){

  bool isMayus = false;
  if(str== str.toUpperCase()){
    isMayus = true;

  }

  return isMayus;
}

void main(List<String> args) {
  print("Dime algo.");
  String input =  stdin.readLineSync()!;

  if(isMayus(input)){
    print("La cadena introducida solo contiene mayúsculas");
  }else if(isMinus(input)){
    print("La cadena introducida solo contiene minusculas");
  }else{
    print("La cadena introducida contiene mayusculas y minusculas");
  }


}