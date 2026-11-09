interface Resumible {
    resumen(): string;
}

// implements comprueba que la clase cumple el contrato de Resumible.
// La implementación del método la escribimos nosotros.
class Persona implements Resumible {
    public nombre: string;
    public apellidos: string;

    // private permite utilizar esta propiedad dentro de Persona.
    private edad: number;

    // protected permite utilizarla dentro de Persona y de sus subclases.
    protected localidad: string;

    constructor(
        nombre: string,
        apellidos: string,
        edad: number,
        localidad: string
    ) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
        this.localidad = localidad;
    }

    nombreCompleto(): string {
        return `${this.nombre} ${this.apellidos}`;
    }

    obtenerEdad(): number {
        return this.edad;
    }

    resumen(): string {
        return `${this.nombreCompleto()}, ${this.edad} años`;
    }
}

// Herencia: un Estudiante es una Persona.
class Estudiante extends Persona {
    expediente: string;

    constructor(
        nombre: string,
        apellidos: string,
        edad: number,
        localidad: string,
        expediente: string
    ) {
        // Inicializamos la parte heredada antes de utilizar this.
        super(nombre, apellidos, edad, localidad);

        this.expediente = expediente;
    }

    // Sustituimos el método heredado por una versión ampliada.
    override resumen(): string {
        // super.resumen() ejecuta la versión de Persona.
        return `${super.resumen()} · ${this.localidad} · ${this.expediente}`;
    }
}

const estudiante = new Estudiante(
    "Lucía",
    "Martín",
    23,
    "Málaga",
    "EXP-001"
);

console.log(estudiante.nombreCompleto());
console.log(estudiante.resumen());
console.log("Edad", estudiante.obtenerEdad());

// Estos accesos producen errores de tipos por su visibilidad.
// console.log(estudiante.edad);
// console.log(estudiante.localidad);

export {};