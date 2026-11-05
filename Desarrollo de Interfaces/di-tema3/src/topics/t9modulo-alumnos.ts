import type {
  Alumno,
  Ensenanza,
  Instituto
} from './t9modulo-instituto';

import {
  matricularAlumno,
  mostrarAlumnos,
  mostrarDireccionInstituto
} from './t9modulo-instituto';

// Creamos las tres enseñanzas.
const dam: Ensenanza = {
  nivel: 'Grado Superior en Desarrollo de Aplicaciones Multiplataforma',
  obligatoria: false,
  familiaProfesional: 'Informática y Comunicaciones',
  turno: 'Mañana'
};

const daw: Ensenanza = {
  nivel: 'Grado Superior en Desarrollo de Aplicaciones Web',
  obligatoria: false,
  familiaProfesional: 'Informática y Comunicaciones',
  turno: 'Telemático'
};

const eso: Ensenanza = {
  nivel: 'Educación Secundaria Obligatoria',
  obligatoria: true,
  familiaProfesional: '',
  turno: 'Mañana'
};

// Creamos los dos alumnos.
const alumno1: Alumno = {
  nombre: 'Alexis',
  edad: 23,
  sexo: 'Hombre',
  ensenanza: dam,
  direccion: {
    calle: 'Calle Luna, 10',
    cp: '29620',
    localidad: 'Torremolinos',
    provincia: 'Málaga'
  }
};

const alumno2: Alumno = {
  nombre: 'Lucía',
  edad: 22,
  sexo: 'Mujer',
  ensenanza: daw,
  direccion: {
    calle: 'Calle Sol, 5',
    cp: '29630',
    localidad: 'Benalmádena',
    provincia: 'Málaga'
  }
};

// Creamos el instituto con datos de ejemplo.
const instituto: Instituto = {
  nombre: 'Instituto Costa del Sol',
  director: 'Antonio López',
  telefono: '950000000',
  correo: 'contacto@instituto.example',
  direccion: {
    calle: 'Avenida del Mar, 20',
    cp: '29620',
    localidad: 'Torremolinos',
    provincia: 'Málaga'
  },
  alumnos: []
};

// Mostramos las enseñanzas.
console.table([dam, daw, eso]);

// Matriculamos a los dos alumnos.
matricularAlumno(instituto, alumno1, dam);
matricularAlumno(instituto, alumno2, daw);

// Mostramos los alumnos y la dirección del instituto.
mostrarAlumnos(instituto);
mostrarDireccionInstituto(instituto);