import {
    Alumno,
    Profesor,
    Taller,
    resumirTaller,
    mostrarLista,
} from "./Prueba";

// Profesora con dirección.
const profesora1 = new Profesor(
    "Ana",
    "López",
    "Programación",
    {
        calle: "Calle Mayor 10",
        codigoPostal: "29001",
        localidad: "Málaga",
    }
);

// Profesor sin dirección: omitimos el último argumento.
const profesor2 = new Profesor(
    "Carlos",
    "Ruiz",
    "Bases de datos"
);

// Tres alumnos con expedientes diferentes.
const alumno1 = new Alumno("Lucía", "Martín", 101);
const alumno2 = new Alumno("José", "Falco", 102);
const alumno3 = new Alumno("Elena", "García", 103);

const alumnos: Alumno[] = [alumno1, alumno2, alumno3];

// El primer taller empieza vacío y admite dos alumnos.
const taller1 = new Taller(
    "Introducción a TypeScript",
    profesora1,
    2
);

// El segundo utiliza el parámetro de alumnos iniciales.
const taller2 = new Taller(
    "Consultas SQL",
    profesor2,
    3,
    [alumno3]
);

const talleres: Taller[] = [taller1, taller2];

// PRUEBAS DE INSCRIPCIÓN

console.log("Primera inscripción", taller1.inscribir(alumno1));
// true

console.log("Plazas después de la primera", taller1.plazasLibres());
// 1

console.log("Expediente repetido", taller1.inscribir(alumno1));
// false: todavía queda una plaza, pero el expediente ya existe.

console.log("Inscritos tras el rechazo", taller1.listadoAlumnos.length);
// 1: el rechazo no modifica la lista.

console.log("Segunda inscripción", taller1.inscribir(alumno2));
// true

console.log("Taller lleno", taller1.inscribir(alumno3));
// false: ya no quedan plazas.

console.log("Inscritos finales", taller1.listadoAlumnos.length);
// 2

console.log("Plazas libres finales", taller1.plazasLibres());
// 0

// LISTADO GENÉRICO DE ALUMNOS

console.log("----- ALUMNOS -----");

mostrarLista(
    alumnos,
    alumno =>
        `${alumno.nombre} ${alumno.apellidos} · Expediente ${alumno.numeroExpediente}`
);

// LISTADO GENÉRICO Y RESÚMENES DE TALLERES

console.log("----- TALLERES -----");

// Pasamos la función sin ejecutarla.
// mostrarLista la llamará una vez por cada taller.
mostrarLista(talleres, resumirTaller);

// El resumen de taller1 muestra Málaga y 0 plazas libres.
// El resumen de taller2 muestra Sin dirección y 2 plazas libres.

// DESESTRUCTURACIÓN DEL ARRAY

const [primerInscrito] = taller1.listadoAlumnos;

// Si la lista estuviera vacía, primerInscrito sería undefined.
console.log(
    "Primer inscrito",
    primerInscrito?.nombre ?? "Sin inscritos"
);
// Lucía

// TABLA DE LOS INSCRITOS EN EL PRIMER TALLER

console.table(taller1.listadoAlumnos);