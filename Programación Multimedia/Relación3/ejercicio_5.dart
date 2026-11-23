// Ejercicio 5 de la Relación 3
// Fecha de creación: 22/11/2026
// Autor: Alexis Balboteo González

enum Colores { rojo, verde, azul }

void main() {
  // Conversión de String a int
  String textoEntero = "25";
  int numeroEntero = int.parse(textoEntero);
  print("Entero: $numeroEntero");

  // Conversión de String a double
  String textoDecimal = "15.75";
  double numeroDecimal = double.parse(textoDecimal);
  print("Decimal: $numeroDecimal");

  // Conversión de String a bool
  String textoBooleano = "true";
  bool booleano = bool.parse(textoBooleano);
  print("Booleano: $booleano");

  // Conversión de String a List
  String textoLista = "rojo,verde,azul";
  List<String> lista = textoLista.split(",");
  print("Lista: $lista");

  // Conversión de String a Set
  String textoSet = "rojo,verde,rojo,azul";
  Set<String> conjunto = textoSet.split(",").toSet();
  print("Set: $conjunto");

  // Conversión de String a Map
  String textoMap = "nombre:Alexis";
  List<String> partes = textoMap.split(":");
  Map<String, String> mapa = {partes[0]: partes[1]};
  print("Map: $mapa");

  // Conversión de String a Enum
  String textoColor = "verde";
  Colores color = Colores.values.byName(textoColor);
  print("Enum: $color");

  // Conversión de double a String con formato
  double precio = 15.75689;

  String precioTexto = precio.toString();
  String precioDosDecimales = precio.toStringAsFixed(2);

  print("Double convertido a String: $precioTexto");
  print("Double con 2 decimales: $precioDosDecimales");
}
