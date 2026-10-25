/**
 * Suma los dos números.
 * @param a El primer número.
 * @param b El segundo número. Si no lo ponemos, se usa el primero.
 * @returns Lo que da la suma.
 */
function sumar(a: number, b?: number): number {
  return a + (b ?? a);
}

/**
 * Resta el segundo número al primero.
 * @param a El primer número.
 * @param b El segundo número. Si no lo ponemos, se usa el primero.
 * @returns Lo que da la resta.
 */
function restar(a: number, b?: number): number {
  return a - (b ?? a);
}

/**
 * Multiplica los dos números.
 * @param a El primer número.
 * @param b El segundo número. Si no lo ponemos, se usa el primero.
 * @returns Lo que da la multiplicación.
 */
function multiplicar(a: number, b?: number): number {
  return a * (b ?? a);
}

/**
 * Divide el primer número entre el segundo.
 * @param a El número que queremos dividir.
 * @param b El número entre el que dividimos. Si no lo ponemos, se usa el primero.
 * @returns Lo que da la división o un mensaje si dividimos entre cero.
 */
function dividir(a: number, b?: number): number | string {
  const divisor = b ?? a;

  if (divisor === 0) {
    return 'No se puede dividir entre cero';
  }

  return a / divisor;
}

// Probamos las funciones con dos números.
console.log('10 + 2 =', sumar(10, 2));
console.log('10 - 2 =', restar(10, 2));
console.log('10 * 2 =', multiplicar(10, 2));
console.log('10 / 2 =', dividir(10, 2));

// Probamos qué pasa si solo ponemos un número. Por los paramatros opcionales.
console.log('5 + 5 =', sumar(5));
console.log('5 - 5 =', restar(5));
console.log('5 * 5 =', multiplicar(5));
console.log('5 / 5 =', dividir(5));

// Comprobamos las operaciones con cero.
console.log('5 + 0 =', sumar(5, 0));
console.log('5 - 0 =', restar(5, 0));
console.log('5 * 0 =', multiplicar(5, 0));
console.log('5 / 0 =', dividir(5, 0));

export {};