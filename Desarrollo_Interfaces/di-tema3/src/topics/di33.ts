// Interfaz de alumnos.
interface Alumno {

    nombre: string;
    apellidos: string;
    nacionalidad: string;
    annoNacimiento: number;
    telefono: string;
    correoElectronico: string;
    modulos: string[];
    convalidaIpe: boolean;

    // .? indica que estos campos son opcionales.
    nivelPadel?: 'Nulo' | 'Intermedio' | 'Pro';
    centroProcedencia?: string;
    
}
//  alumno1: Rellenamos todos los datos.
const alumno1: Alumno = {
    nombre: 'Laura',
    apellidos: 'García López',
    nacionalidad: 'Española',
    annoNacimiento: 2005,
    telefono: '555767431',
    correoElectronico: 'laura@garcia.com',
    modulos: ['Programación', 'Bases de datos'],
    convalidaIpe: true,
    nivelPadel: 'Intermedio',
    centroProcedencia: 'IES Centro Norte'
};
// alumno2: sin los campos opcionales.
const alumno2: Alumno = {
    nombre: 'Pablo',
    apellidos: 'Martín Ruiz',
    nacionalidad: 'Española',
    annoNacimiento: 2004,
    telefono: '666543210',
    correoElectronico: 'pablo@gmail.com',
    modulos: ['Desarrollo de interfaces', 'Acceso a datos'],
    convalidaIpe: false
};
console.log([

    alumno1,
    alumno2

])
export{}; 