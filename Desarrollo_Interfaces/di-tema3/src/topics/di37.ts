const matriculas = [
    {
        nombre: "Juan",
        apellidos: "García",
        modulos: ["Programación", "Bases de Datos"],
        expedientes: [
            { curso: "1º DAM", notaMedia: 7 },
            { curso: "2º DAM", notaMedia: 8 }
        ]
    },
    {
        nombre: "Pedro",
        apellidos: "Sánchez",
        modulos: ["Programación", "Acceso a Datos"],
        expedientes: [
            { curso: "1º DAM", notaMedia: 1 },
            { curso: "2º DAM", notaMedia: 0.5 }
        ]
    },
    {
        nombre: "Ana",
        apellidos: "López",
        modulos: ["Programación", "Interfaces"],
        expedientes: [
            { curso: "1º DAM", notaMedia: 8 },
            { curso: "2º DAM", notaMedia: 9 }
        ]
    }
];

// Segundo alumno
const [, { nombre,
    apellidos,
    modulos: [primerModulo],
    expedientes: [, { curso, notaMedia }] }
] = matriculas;

console.log(nombre, apellidos);
console.log(primerModulo);
console.log(curso, notaMedia);