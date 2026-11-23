
 // Ejercicio 15 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 void main() {

   String textoURL =
       "https://www.ejemplo.com/productos?nombre=camiseta%20azul#ofertas";

   // Decodificar la URI
   String decodificada = Uri.decodeFull(textoURL);

   print("URI decodificada: $decodificada");

   // Convertir el String en un objeto Uri
   Uri uri = Uri.parse(textoURL);

   print("Scheme: ${uri.scheme}");
   print("Host: ${uri.host}");
   print("Path: ${uri.path}");
   print("Fragment: ${uri.fragment}");
   print("Origin: ${uri.origin}");
   print("Query Parameters: ${uri.queryParameters}");

   // Construir una URI indicando sus partes
   Uri nuevaURI = Uri(
     scheme: "https",
     host: "www.google.com",
     path: "search",
     queryParameters: {"q": "Dart programación"}
   );

   print("\nNueva URI: $nuevaURI");
 }
