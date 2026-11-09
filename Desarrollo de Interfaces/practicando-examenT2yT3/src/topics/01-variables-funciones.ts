// let permite reasignar la variable.
let puntos: number = 50;
puntos = 80;

// const impide reasignar la variable.
const nombre: string = "Lucía";
const activo: boolean = true;

// Una unión permite varios tipos.
// Aquí aceptamos un número o exactamente el texto "FULL".
let energia: number | "FULL" = 40;
console.log("Energía inicial", energia);

energia = "FULL";

console.log({ nombre, activo, puntos, energia });

// Función normal.
// Recibe dos números y devuelve un número.
function sumar(a: number, b: number): number {
    return a + b;
}

// Función de flecha guardada en una constante.
// Con llaves necesitamos escribir return.
const multiplicar = (a: number, b: number): number => {
    return a * b;
};

// Con una única expresión podemos omitir las llaves y el return.
const duplicar = (numero: number): number => numero * 2;

console.log("Suma", sumar(3, 4));
console.log("Multiplicación", multiplicar(3, 4));
console.log("Doble", duplicar(5));

// Parámetro con valor por defecto.
// Si omitimos incremento o pasamos undefined, se utiliza 10.
function aumentarPuntos(actuales: number, incremento: number = 10): number {
    return actuales + incremento;
}

console.log(aumentarPuntos(50));     // 60
console.log(aumentarPuntos(50, 20)); // 70
console.log(aumentarPuntos(50, 0));  // 50

// Parámetro opcional.
// apellidos puede ser un string o undefined.
function saludar(nombre: string, apellidos?: string): string {
    if (apellidos === undefined) {
        return `Hola, ${nombre}`;
    }

    return `Hola, ${nombre} ${apellidos}`;
}

console.log(saludar("Lucía"));
console.log(saludar("Lucía", "Martín"));

// void indica que la función no devuelve un resultado útil.
function mostrarMensaje(mensaje: string): void {
    console.log(mensaje);
}

function mostrarNota(nombre: string, nota?: number): void {
    // ?? conserva el 0 porque es una nota válida.
    console.log(`${nombre}: ${nota ?? "Sin calificar"}`);
}

mostrarNota("Lucía", 8); // Lucía: 8
mostrarNota("José", 0);  // José: 0
mostrarNota("Ana");      // Ana: Sin calificar

// Comparación directa.
const nota: number = 0;

console.log(nota ?? "Sin calificar"); // 0
console.log(nota || "Sin calificar"); // Sin calificar



mostrarMensaje("Ejercicio 1 terminado");

export {};