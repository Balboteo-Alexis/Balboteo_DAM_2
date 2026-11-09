interface CentroEducativo {
    nombre: string;
    localidad: string;
    telefono?: string;
}

interface Matricula {
    ciclo: string;
    modulos: string[];
    centro: CentroEducativo;
}

interface Alumno {
    nombre: string;
    apellidos: string;
    matricula: Matricula;
}

const alumno: Alumno = {
    nombre: "Lucía",
    apellidos: "Martín",
    matricula: {
        ciclo: "DAM",
        modulos: ["Desarrollo de Interfaces", "Programación"],
        centro: {
            nombre: "IES Playamar",
            localidad: "Torremolinos",
            telefono: "1331313132"
        },
    },
};

// Desestructuración de un objeto.
// Creamos una variable llamada nombreAlumno a partir de la propiedad nombre.
const { nombre: nombreAlumno } = alumno;

console.log("Nombre extraído", nombreAlumno);

// Desestructuración directamente en el parámetro.
// Cada par de llaves entra en un nivel del objeto.
function resumirAlumno(
    {
        nombre,
        apellidos,
        matricula: {
            ciclo,
            centro: { nombre: nombreCentro },
        },
    }: Alumno
): string {
    return `Alumno: ${nombre} ${apellidos}
Ciclo: ${ciclo}
Centro: ${nombreCentro}`;
}

console.log(resumirAlumno(alumno));

// Desestructuración de arrays por posición.
// El valor por defecto se usa si esa posición contiene undefined.
const [primerModulo, segundoModulo, tercerModulo = "Sin tercer módulo"] =
    alumno.matricula.modulos;

console.log({ primerModulo, segundoModulo, tercerModulo });

// La coma inicial salta el primer elemento.
const [, segundo] = alumno.matricula.modulos;
console.log("Segundo módulo", segundo);

// El centro existe, pero su teléfono es opcional.
// ?. evita llamar a trim() cuando el teléfono es null o undefined.
// ?? utiliza el texto alternativo si el resultado es null o undefined.
const telefono = alumno.matricula.centro.telefono?.trim() ?? "Sin teléfono";

console.log(telefono);

// También podemos tener varios niveles opcionales.
interface FichaContacto {
    direccion?: {
        localidad?: string;
    };
}

const contacto: FichaContacto = {};

console.log(contacto.direccion?.localidad ?? "Localidad desconocida");

// Diferencia entre || y ??.
const puntuacion: number = 0;

console.log(puntuacion || 10); // 10: || sustituye también 0, false y "".
console.log(puntuacion ?? 10); // 0: ?? solo sustituye null o undefined.

// El operador ! solo afirma algo ante TypeScript.
// No comprueba el dato ni evita un error en ejecución.
// contacto.direccion!.localidad daría error al ejecutarse en este ejemplo.

export {};