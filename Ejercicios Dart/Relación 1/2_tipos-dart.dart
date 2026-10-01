void main(){

  String nombre = 'Alexis'; // tipo y nombre de la variable
  int edad= 22;
  double altura= 1.91;
  bool esMayor= true;

  dynamic variableDinamica= 'Holaaaaaa';

  print ('variableDinamica es de tipo ${variableDinamica.runtimeType} y su valor es $variableDinamica'); 

  List<String> listaNombres = ["Pilar", "Juan", "Manolo"];

  print('La lista de nombres es: $listaNombres');

  for( int i = 0 ; i < listaNombres.length; i++){

    print('El nombre en la posición $i es ${listaNombres[i]}');

  }

  listaNombres.forEach(print);



  //arrays asocaitivos

  Map<String, int > mapaedades = {'Pilar': 20, 'Juan' :50 , 'Ana' : 30};

  print('El mapa de edades es: $mapaedades');

  mapaedades.forEach((key, value){
    print('La edad de $key es $value');
  });


  // conjuntos

  Set<String> conjuntoNombres = {'Pilar ', 'Juaeeen ', 'Ana'};



  for(String nombre in conjuntoNombres){

    print('El nombre en el conjunto es: $nombre');

  }



  (String, int, double ) persona = ('Pilar', 20, 1.70);
  print('Datos de la persona: $persona');
  print('La persona es: ${persona.$1}, tiene ${persona.$2} años y mide ${persona.$3} ');






}