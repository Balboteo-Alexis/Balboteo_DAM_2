interface CentroEducativo {
  centro: string;
  localidad: string;
  codigoCentro: string;
  telefono: string;
}

interface Matricula {
  modulosProfesionales: string[];
  cicloFormativo: string;
  centroEducativo: CentroEducativo;
}

interface Alumno {
  nombre: string;
  apellidos: string;
  anioNacimiento: number;
  nacionalidad: string;
  matricula: Matricula;
}

const alumno1: Alumno = {
  nombre: "Alexis",
  apellidos: "Balboteo González",
  anioNacimiento: 2003,
  nacionalidad: "Española",
  matricula: {
    modulosProfesionales: ["Programación", "Bases de datos"],
    cicloFormativo: "Desarrollo de Aplicaciones Multiplataforma",
    centroEducativo: {
      centro: "IES Playamar",
      localidad: "Málaga",
      codigoCentro: "28000001",
      telefono: "910000001"
    }
  }
};

const alumno2: Alumno = {
  nombre: "Lucía",
  apellidos: "García Pérez",
  anioNacimiento: 2004,
  nacionalidad: "Española",
  matricula: {
    modulosProfesionales: ["Desarrollo web en entorno cliente", "Diseño de interfaces web"],
    cicloFormativo: "Desarrollo de Aplicaciones Web",
    centroEducativo: {
      centro: "IES Robledo",
      localidad: "Sevilla",
      codigoCentro: "41000002",
      telefono: "950000002"
    }
  }
};

// Mostramos los alumnos.
console.table([alumno1, alumno2]);

// Mostramos también los datos que están dentro.
console.table([alumno1.matricula, alumno2.matricula]);

console.table([
  alumno1.matricula.centroEducativo,
  alumno2.matricula.centroEducativo
]);

console.log("Módulos de Alexis:");
console.table(alumno1.matricula.modulosProfesionales);

console.log("Módulos de Lucía:");
console.table(alumno2.matricula.modulosProfesionales);

// Sacamos los datos del primer alumno con desestructuración.
const { nombre, apellidos, matricula } = alumno1;
const { cicloFormativo, centroEducativo } = matricula;
const { centro } = centroEducativo;

console.log(`Alumno: ${nombre} ${apellidos}`);
console.log(`Ciclo Formativo: ${cicloFormativo}`);
console.log(`Centro: ${centro}`);

export {};