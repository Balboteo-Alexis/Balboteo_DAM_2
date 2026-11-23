/*
 * RELACIÓN DE EJERCICIOS 3: EJERCICIO 12
 * Librería con todas las funciones de validación de String
 * Autor: Antonio Benítez Rodríguez
 * Fecha: 24/10/2025
 */
// Función que comprueba si una cadena de texto tiene formato de color hexadecimal RGB válido
bool isRGB(String str) {
  // Verifica mediante expresión regular si empieza por '#' seguido de 3 o 6 dígitos hexadecimales
  return new RegExp(r"^#(?:[0-9a-fA-F]{3}){1,2}$").hasMatch(str);
}

// Función que comprueba si una cadena de texto tiene formato de dirección web (URL) válida
bool isURL(String str) {
  // Verifica mediante expresión regular si cumple la estructura de protocolo http/https, dominio y extensión
  return new RegExp(
    r"^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$",
  ).hasMatch(str);
}

// Función que comprueba si una cadena de texto tiene formato de correo electrónico válido
bool isEmail(String str) {
  // Verifica mediante expresión regular si contiene usuario, símbolo '@', dominio y extensión de 2 a 4 letras
  return new RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(str);
}

// Función que comprueba si una cadena de texto cumple el formato de un DNI español válido
bool isDNI(String str) {
  // Verifica mediante expresión regular si tiene exactamente 8 números seguidos de una letra oficial del DNI
  return new RegExp(r"^[0-9]{8}[TRWAGMYFPDXBNJZSQVHLCKE]$").hasMatch(str);
}