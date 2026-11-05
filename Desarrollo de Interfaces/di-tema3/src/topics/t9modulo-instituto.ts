export interface Direccion {
  calle: string;
  cp: string;
  localidad: string;
  provincia: string;
}

export interface Ensenanza {
  nivel: string;
  obligatoria: boolean;
  familiaProfesional: string;
  turno: string;
}

export interface Alumno {
  nombre: string;
  edad: number;
  sexo: string;
  ensenanza: Ensenanza;
  direccion: Direccion;
}

export interface Instituto {
  nombre: string;
  director: string;
  telefono: string;
  correo: string;
  direccion: Direccion;
  alumnos: Alumno[];
}

// Ponemos la enseñanza y añadimos el alumno al instituto.
export function matricularAlumno(
  { alumnos }: Instituto,
  alumno: Alumno,
  ensenanza: Ensenanza
): void {
  alumno.ensenanza = ensenanza;
  alumnos.push(alumno);
}

// Mostramos el nombre, el nivel y la localidad de cada alumno.
export function mostrarAlumnos({ alumnos }: Instituto): void {
  alumnos.forEach(({ nombre, ensenanza: { nivel }, direccion: { localidad } }) => {
    console.log(`Alumno: ${nombre}`);
    console.log(`Nivel: ${nivel}`);
    console.log(`Localidad: ${localidad}`);
  });
}

// Mostramos la dirección completa del instituto.
export function mostrarDireccionInstituto(
  { direccion: { calle, cp, localidad, provincia } }: Instituto
): void {
  console.log(`Dirección: ${calle}, ${cp}, ${localidad}, ${provincia}`);
}