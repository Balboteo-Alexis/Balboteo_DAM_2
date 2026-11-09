// ======================================================
// 1. VARIABLES Y TIPOS DE DATOS
// ======================================================

let nombre: string = "Camilo";
let edad: number = 19;
let activo: boolean = true;
let cualquierCosa: any = "Hola";
let desconocido: unknown = 25;

const PI: number = 3.1416;

let codigo: string | number = 123;
let nulo: null = null;
let indefinido: undefined = undefined;


// ======================================================
// 2. ARRAYS
// ======================================================

let numeros: number[] = [1, 2, 3, 4, 5];
let nombres: string[] = ["Camilo", "Alexis"];
let mixto: (string | number)[] = ["Hola", 25];

let edades: Array<number> = [19, 20, 21];

// Métodos de arrays
numeros.push(6);                   // Añadir al final
numeros.pop();                     // Eliminar último
numeros.unshift(0);                // Añadir al principio
numeros.shift();                   // Eliminar primero
numeros.length;                    // Tamaño
numeros.includes(3);               // Comprobar existencia
numeros.indexOf(3);                // Buscar posición
numeros.reverse();                 // Invertir
numeros.sort((a, b) => a - b);     // Ordenar números

// Recorrer
numeros.forEach(n => console.log(n));

// Transformar
let dobles = numeros.map(n => n * 2);

// Filtrar
let mayores = numeros.filter(n => n > 2);

// Buscar
let encontrado = numeros.find(n => n === 3);

// Acumular
let suma = numeros.reduce((total, n) => total + n, 0);


// ======================================================
// 3. CONDICIONALES
// ======================================================

if (edad >= 18) {
    console.log("Mayor de edad");
} else if (edad >= 16) {
    console.log("Casi mayor");
} else {
    console.log("Menor de edad");
}

// Operador ternario
let mensaje: string = edad >= 18 ? "Mayor" : "Menor";

// Switch
let opcion: number = 2;

switch (opcion) {
    case 1:
        console.log("Opción 1");
        break;
    case 2:
        console.log("Opción 2");
        break;
    default:
        console.log("Opción incorrecta");
}


// ======================================================
// 4. BUCLES
// ======================================================

// FOR
for (let i = 0; i < 10; i++) {
    console.log(i);
}

// WHILE
let contador = 0;

while (contador < 5) {
    console.log(contador);
    contador++;
}

// DO WHILE
do {
    console.log(contador);
    contador--;
} while (contador > 0);

// FOR OF: valores
for (let nombre of nombres) {
    console.log(nombre);
}

// FOR IN: índices / propiedades
for (let indice in nombres) {
    console.log(indice);
}


// ======================================================
// 5. FUNCIONES
// ======================================================

// Función sin devolver nada
function saludar(): void {
    console.log("Hola");
}

// Función con parámetros y retorno
function sumar(a: number, b: number): number {
    return a + b;
}

// Retornar texto
function obtenerNombre(): string {
    return "Camilo";
}

// Parámetro opcional
function presentar(nombre: string, edad?: number): void {
    console.log(nombre, edad);
}

// Parámetro por defecto
function despedir(nombre: string = "Usuario"): void {
    console.log("Adiós " + nombre);
}

// Función flecha
const multiplicar = (a: number, b: number): number => {
    return a * b;
};

// Flecha simplificada
const dividir = (a: number, b: number): number => a / b;

// Función anónima
let restar = function(a: number, b: number): number {
    return a - b;
};

// Parámetros REST
function sumarTodo(...nums: number[]): number {
    return nums.reduce((total, n) => total + n, 0);
}


// ======================================================
// 6. OBJETOS
// ======================================================

let persona: {
    nombre: string;
    edad: number;
    localidad: string;
} = {
    nombre: "Camilo",
    edad: 19,
    localidad: "Málaga"
};

console.log(persona.nombre);
console.log(persona.edad);

persona.edad = 20;


// ======================================================
// 7. INTERFACES
// ======================================================

interface Expediente {
    curso: string;
    notaMedia: number;
}

interface EstudianteDatos {
    nombre: string;
    edad: number;
    localidad: string;
    activo?: boolean; // Opcional
}

let alumno: EstudianteDatos = {
    nombre: "Camilo",
    edad: 19,
    localidad: "Málaga"
};


// ======================================================
// 8. CLASES, ATRIBUTOS Y CONSTRUCTORES
// ======================================================

class Estudiante {

    // Atributos
    nombre: string;
    edad: number;
    localidad: string;

    // Constructor
    constructor(nombre: string, edad: number, localidad: string) {
        this.nombre = nombre;
        this.edad = edad;
        this.localidad = localidad;
    }

    // Método sin retorno
    saludar(): void {
        console.log("Hola, soy " + this.nombre);
    }

    // Método con retorno
    obtenerEdad(): number {
        return this.edad;
    }

    // Método con parámetros
    cambiarEdad(nuevaEdad: number): void {
        this.edad = nuevaEdad;
    }

    // Método estático
    static mostrarInfo(): void {
        console.log("Clase Estudiante");
    }
}

// Crear objetos
let alumno1 = new Estudiante("Camilo", 19, "Málaga");
let alumno2 = new Estudiante("Alexis", 20, "Torremolinos");

// Llamar métodos
alumno1.saludar();
alumno1.cambiarEdad(20);

// Acceder a atributos
console.log(alumno1.nombre);

// Método estático
Estudiante.mostrarInfo();


// ======================================================
// 9. PUBLIC, PRIVATE Y PROTECTED
// ======================================================

class Persona {

    public nombre: string;
    private edad: number;
    protected dni: string;

    constructor(nombre: string, edad: number, dni: string) {
        this.nombre = nombre;
        this.edad = edad;
        this.dni = dni;
    }

    public mostrarNombre(): void {
        console.log(this.nombre);
    }

    private mostrarEdad(): void {
        console.log(this.edad);
    }
}


// ======================================================
// 10. GETTERS Y SETTERS
// ======================================================

class Cuenta {

    private saldo: number;

    constructor(saldo: number) {
        this.saldo = saldo;
    }

    get obtenerSaldo(): number {
        return this.saldo;
    }

    set modificarSaldo(nuevoSaldo: number) {
        if (nuevoSaldo >= 0) {
            this.saldo = nuevoSaldo;
        }
    }
}

let cuenta = new Cuenta(100);

console.log(cuenta.obtenerSaldo);
cuenta.modificarSaldo = 250;


// ======================================================
// 11. HERENCIA Y SUPER
// ======================================================

class Animal {

    constructor(public nombre: string) {}

    hacerSonido(): void {
        console.log("Sonido de animal");
    }
}

class Perro extends Animal {

    constructor(nombre: string, public raza: string) {
        super(nombre);
    }

    ladrar(): void {
        console.log("Guau");
    }

    override hacerSonido(): void {
        console.log("Guau guau");
    }
}

let perro = new Perro("Toby", "Labrador");

perro.hacerSonido();
perro.ladrar();


// ======================================================
// 12. IMPLEMENTS (INTERFACES EN CLASES)
// ======================================================

interface Vehiculo {
    marca: string;
    arrancar(): void;
}

class Coche implements Vehiculo {

    marca: string;

    constructor(marca: string) {
        this.marca = marca;
    }

    arrancar(): void {
        console.log("Coche arrancado");
    }
}

let coche = new Coche("BMW");
coche.arrancar();


// ======================================================
// 13. ENUM
// ======================================================

enum Estado {
    Pendiente,
    EnProceso,
    Completado
}

let tarea: Estado = Estado.Pendiente;

enum Rol {
    ADMIN = "ADMIN",
    USER = "USER",
    INVITADO = "INVITADO"
}


// ======================================================
// 14. TUPLAS
// ======================================================

let usuario: [string, number, boolean];

usuario = ["Camilo", 19, true];

console.log(usuario[0]);
console.log(usuario[1]);


// ======================================================
// 15. TYPE (TIPOS PERSONALIZADOS)
// ======================================================

type Identificador = number | string;

let id: Identificador = 123;

type Producto = {
    nombre: string;
    precio: number;
};

let producto: Producto = {
    nombre: "Teclado",
    precio: 25
};


// ======================================================
// 16. STRINGS Y NÚMEROS
// ======================================================

let texto: string = "Hola Camilo";

// Strings
texto.length;
texto.toUpperCase();
texto.toLowerCase();
texto.trim();
texto.includes("Hola");
texto.startsWith("Hola");
texto.endsWith("Camilo");
texto.replace("Hola", "Adiós");
texto.split(" ");
texto.substring(0, 4);

// Números
let numero: number = 15.678;

numero.toFixed(2);
Math.round(numero);
Math.floor(numero);
Math.ceil(numero);
Math.sqrt(25);
Math.pow(2, 3);
Math.random();
Math.max(2, 5, 8);
Math.min(2, 5, 8);


// ======================================================
// 17. TRY / CATCH
// ======================================================

try {
    let resultado = 10 / 0;
    console.log(resultado);

} catch (error) {
    console.log("Ha ocurrido un error");

} finally {
    console.log("Finalizado");
}


// ======================================================
// 18. PROMISE, ASYNC Y AWAIT
// ======================================================

function obtenerDatos(): Promise<string> {

    return new Promise((resolve, reject) => {

        let correcto = true;

        if (correcto) {
            resolve("Datos obtenidos");
        } else {
            reject("Error");
        }
    });
}

async function ejecutar(): Promise<void> {

    try {
        let resultado = await obtenerDatos();
        console.log(resultado);

    } catch (error) {
        console.log(error);
    }
}


// ======================================================
// 19. OPERADORES
// ======================================================

// Aritméticos
let a = 5 + 3;
let b = 5 - 3;
let c = 5 * 3;
let d = 5 / 3;
let e = 5 % 3;
let f = 5 ** 3;

// Comparación
// 5 == "5";
// 5 === "5";
// 5 != "5";
// 5 !== "5";
// 5 > 3;
// 5 < 3;
// 5 >= 3;
// 5 <= 3;

// Lógicos
true && false;
true || false;
!true;

// Incremento
contador++;
contador--;

// Nullish coalescing
let nombreUsuario: string | null = null;
let nombreFinal = nombreUsuario ?? "Invitado";

// Optional chaining
let datos: any = {};
console.log(datos.direccion?.calle);


// ======================================================
// 20. EJEMPLO COMPLETO DE CLASE + ARRAY + MÉTODOS
// ======================================================

class Alumno {

    constructor(
        public nombre: string,
        public apellidos: string,
        public edad: number,
        public localidad: string,
        public expediente: Expediente
    ) {}

    mostrarDatos(): void {
        console.log(`${this.nombre} ${this.apellidos}`);
    }

    obtenerNota(): number {
        return this.expediente.notaMedia;
    }

    aprobar(): boolean {
        return this.expediente.notaMedia >= 5;
    }

    cambiarNota(nuevaNota: number): void {
        this.expediente.notaMedia = nuevaNota;
    }
}

// Array de objetos
let alumnos: Alumno[] = [

    new Alumno(
        "Camilo",
        "Villarroel Recchia",
        19,
        "Málaga",
        { curso: "2025-2026", notaMedia: 8.2 }
    ),

    new Alumno(
        "Alexis",
        "Balboteo Balbolin",
        20,
        "Torremolinos",
        { curso: "2024-2025", notaMedia: 6.9 }
    )
];

// Recorrer
alumnos.forEach(alumno => alumno.mostrarDatos());

// Filtrar aprobados
let aprobados = alumnos.filter(a => a.aprobar());

// Obtener nombres
let listaNombres = alumnos.map(a => a.nombre);

// Buscar alumno
let buscado = alumnos.find(a => a.nombre === "Camilo");

// Calcular media
let media = alumnos.reduce(
    (total, a) => total + a.obtenerNota(), 0
) / alumnos.length;

console.log(aprobados);
console.log(listaNombres);
console.log(buscado);
console.log(media);


// ======================================================
// 21. OTROS MÉTODOS ÚTILES DE ARRAYS
// ======================================================

// some: al menos uno cumple
let algunoAprobado = alumnos.some(a => a.aprobar());

// every: todos cumplen
let todosAprobados = alumnos.every(a => a.aprobar());

// findIndex: posición del elemento
let posicion = alumnos.findIndex(a => a.nombre === "Alexis");

// slice: copiar una parte
let parte = alumnos.slice(0, 1);

// splice: eliminar o insertar
alumnos.splice(0, 1);

// concat: unir arrays
let unidos = numeros.concat([10, 20]);

// join: convertir array en string
let cadena = nombres.join(", ");


// ======================================================
// FIN DE LA CHULETA
// ======================================================