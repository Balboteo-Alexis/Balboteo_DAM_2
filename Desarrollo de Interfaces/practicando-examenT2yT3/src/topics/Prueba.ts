export interface Direccion {
    calle: string;
    codigoPostal: string;
    localidad: string;
}

// Persona reúne los datos comunes de alumnos y profesores.
export class Persona {
    nombre: string;
    apellidos: string;
    direccion?: Direccion;

    constructor(
        nombre: string,
        apellidos: string,
        direccion?: Direccion
    ) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.direccion = direccion;
    }
}

// Herencia: un Alumno es una Persona.
export class Alumno extends Persona {
    numeroExpediente: number;

    constructor(
        nombre: string,
        apellidos: string,
        numeroExpediente: number,
        direccion?: Direccion
    ) {
        super(nombre, apellidos, direccion);
        this.numeroExpediente = numeroExpediente;
    }
}

// Herencia: un Profesor es una Persona.
export class Profesor extends Persona {
    especialidad: string;

    constructor(
        nombre: string,
        apellidos: string,
        especialidad: string,
        direccion?: Direccion
    ) {
        super(nombre, apellidos, direccion);
        this.especialidad = especialidad;
    }
}

// Composición: un Taller tiene un profesor y un listado de alumnos.
export class Taller {
    titulo: string;
    profesor: Profesor;
    capacidad: number;
    listadoAlumnos: Alumno[];

    constructor(
        titulo: string,
        profesor: Profesor,
        capacidad: number,
        listadoAlumnos: Alumno[] = []
    ) {
        this.titulo = titulo;
        this.profesor = profesor;
        this.capacidad = capacidad;

        // Creamos nuestra propia lista y reutilizamos las comprobaciones
        // de inscribir también para los alumnos iniciales.
        this.listadoAlumnos = [];

        for (const alumno of listadoAlumnos) {
            this.inscribir(alumno);
        }
    }

    plazasLibres(): number {
        return this.capacidad - this.listadoAlumnos.length;
    }

    inscribir(alumno: Alumno): boolean {
        // Si no quedan plazas, rechazamos la inscripción.
        if (this.plazasLibres() <= 0) {
            return false;
        }

        // some devuelve true si encuentra un expediente coincidente.
        const yaInscrito = this.listadoAlumnos.some(
            inscrito => inscrito.numeroExpediente === alumno.numeroExpediente
        );

        if (yaInscrito) {
            return false;
        }

        // Solo modificamos la lista cuando se cumplen las condiciones.
        this.listadoAlumnos.push(alumno);
        return true;
    }
}

export function resumirTaller(taller: Taller): string {
    // Desestructuramos los datos del taller y de su profesor.
    const {
        titulo,
        profesor: {
            nombre,
            apellidos,
            direccion,
        },
        listadoAlumnos,
    } = taller;

    const localidad = direccion?.localidad ?? "Sin dirección";

    // Conservamos taller para llamar al método que utiliza this.
    return `Título: ${titulo}
    Profesor: ${nombre} ${apellidos}
    Localidad del profesor: ${localidad}
    Inscritos: ${listadoAlumnos.length}
    Plazas libres: ${taller.plazasLibres()}`;
}

// Función reutilizable para arrays de distintos tipos.
export function mostrarLista<T>(
    elementos: T[],
    formatear: (elemento: T) => string
): void {
    elementos.forEach((elemento, indice) => {
        console.log(indice + 1, formatear(elemento));
    });
}