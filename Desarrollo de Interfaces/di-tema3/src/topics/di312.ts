//Herencia y Composición

interface Direccion {
    calle: string;
    cp: string;
    localidad: string;
    provincia: string;
}

class Persona {
    constructor(
        public nombre: string,
        public apellidos: string,
        public genero: string,
        public telefono: string,
        public direccion: Direccion
    ) {}
}

class Jugador extends Persona {
    constructor(
        nombre: string,
        apellidos: string,
        genero: string,
        telefono: string,
        direccion: Direccion,
        public categoria: number
    ) {
        super(nombre, apellidos, genero, telefono, direccion);
    }
}

class Arbitro extends Persona {
    constructor(
        nombre: string,
        apellidos: string,
        genero: string,
        telefono: string,
        direccion: Direccion,
        public numeroColegiado: number
    ) {
        super(nombre, apellidos, genero, telefono, direccion);
    }
}

class Equipo {
    constructor(
        public jugador1: Jugador,
        public jugador2: Jugador
    ) {}
}

class SetPadel {
    constructor(
        public juegosEquipo1: number,
        public juegosEquipo2: number
    ) {}
}

class Partido {
    constructor(
        public equipo1: Equipo,
        public equipo2: Equipo,
        public fecha: Date,
        public recinto: string,
        public pista: number,
        public arbitro: Arbitro,
        public sets: SetPadel[]
    ) {}
}

class Calendario {
    constructor(
        public partidos: Partido[]
    ) {}
}


// JUGADORES

const jugador1 = new Jugador(
    "Daniel", "Moreno", "Masculino", "600000101",
    { calle: "Calle Olivar 12", cp: "29010", localidad: "Málaga", provincia: "Málaga" },
    2
);

const jugador2 = new Jugador(
    "Hugo", "Serrano", "Masculino", "600000102",
    { calle: "Avenida Europa 8", cp: "29620", localidad: "Torremolinos", provincia: "Málaga" },
    2
);

const jugador3 = new Jugador(
    "Lucía", "Navarro", "Femenino", "600000103",
    { calle: "Calle Real 25", cp: "29631", localidad: "Benalmádena", provincia: "Málaga" },
    3
);

const jugador4 = new Jugador(
    "Paula", "Romero", "Femenino", "600000104",
    { calle: "Calle Granada 16", cp: "29015", localidad: "Málaga", provincia: "Málaga" },
    3
);

const jugador5 = new Jugador(
    "Adrián", "Castillo", "Masculino", "600000105",
    { calle: "Avenida Andalucía 40", cp: "29640", localidad: "Fuengirola", provincia: "Málaga" },
    4
);

const jugador6 = new Jugador(
    "Marcos", "Vega", "Masculino", "600000106",
    { calle: "Calle Jazmín 3", cp: "29140", localidad: "Málaga", provincia: "Málaga" },
    4
);


// EQUIPOS

const equipo1 = new Equipo(jugador1, jugador2);
const equipo2 = new Equipo(jugador3, jugador4);
const equipo3 = new Equipo(jugador5, jugador6);


// ÁRBITROS

const arbitro1 = new Arbitro(
    "Elena", "Ruiz", "Femenino", "600000201",
    { calle: "Calle Sol 7", cp: "29002", localidad: "Málaga", provincia: "Málaga" },
    1458
);

const arbitro2 = new Arbitro(
    "Francisco", "Molina", "Masculino", "600000202",
    { calle: "Calle Luna 14", cp: "29640", localidad: "Fuengirola", provincia: "Málaga" },
    2379
);


// PARTIDOS

const partido1 = new Partido(
    equipo1,
    equipo2,
    new Date("2026-11-14T17:00:00"),
    "Centro Deportivo El Cónsul",
    2,
    arbitro1,
    [
        new SetPadel(6, 3),
        new SetPadel(4, 6),
        new SetPadel(6, 4)
    ]
);

const partido2 = new Partido(
    equipo2,
    equipo3,
    new Date("2026-11-15T10:30:00"),
    "Club Deportivo Costa del Sol",
    1,
    arbitro2,
    [
        new SetPadel(6, 2),
        new SetPadel(6, 1)
    ]
);

const partido3 = new Partido(
    equipo3,
    equipo1,
    new Date("2026-11-16T18:00:00"),
    "Polideportivo Municipal",
    4,
    arbitro1,
    [
        new SetPadel(7, 5),
        new SetPadel(3, 6),
        new SetPadel(4, 6)
    ]
);


// CALENDARIO

const calendario = new Calendario([
    partido1,
    partido2,
    partido3
]);


// FUNCIONES

function nombreEquipo(equipo: Equipo): string {
    return equipo.jugador1.apellidos + "-" +
           equipo.jugador2.apellidos;
}

function obtenerResultado(partido: Partido): string {

    let sets1 = 0;
    let sets2 = 0;

    partido.sets.forEach(set => {
        if (set.juegosEquipo1 > set.juegosEquipo2) {
            sets1++;
        } else if (set.juegosEquipo2 > set.juegosEquipo1) {
            sets2++;
        }
    });

    if (sets1 < 2 && sets2 < 2) {
        return "Partido sin finalizar";
    }

    if (sets1 > sets2) {
        return "El equipo " + nombreEquipo(partido.equipo1) +
               " ha ganado al equipo " + nombreEquipo(partido.equipo2) +
               " por " + sets1 + " sets a " + sets2;
    } else {
        return "El equipo " + nombreEquipo(partido.equipo2) +
               " ha ganado al equipo " + nombreEquipo(partido.equipo1) +
               " por " + sets2 + " sets a " + sets1;
    }
}

function mostrarJugador(jugador: Jugador): void {
    console.log("Nombre:", jugador.nombre);
    console.log("Apellidos:", jugador.apellidos);
    console.log("Género:", jugador.genero);
    console.log("Teléfono:", jugador.telefono);
    console.log("Categoría:", jugador.categoria);
    console.log("Dirección:", jugador.direccion);
}

function mostrarCalendario(calendario: Calendario): void {

    console.log("CALENDARIO DE LA LIGA DE PÁDEL");

    calendario.partidos.forEach((partido, index) => {

        console.log("-----------------------------");
        console.log("PARTIDO", index + 1);

        console.log("Fecha:", partido.fecha.toLocaleString("es-ES"));
        console.log("Recinto:", partido.recinto);
        console.log("Pista:", partido.pista);

        console.log("Árbitro:", partido.arbitro.nombre, partido.arbitro.apellidos);
        console.log("Número colegiado:", partido.arbitro.numeroColegiado);
        console.log("Género:", partido.arbitro.genero);
        console.log("Teléfono:", partido.arbitro.telefono);
        console.log("Dirección:", partido.arbitro.direccion);

        console.log("EQUIPO 1:", nombreEquipo(partido.equipo1));
        mostrarJugador(partido.equipo1.jugador1);
        mostrarJugador(partido.equipo1.jugador2);

        console.log("EQUIPO 2:", nombreEquipo(partido.equipo2));
        mostrarJugador(partido.equipo2.jugador1);
        mostrarJugador(partido.equipo2.jugador2);

        console.log("SETS:");

        partido.sets.forEach((set, i) => {
            console.log(
                "Set " + (i + 1) + ": " +
                set.juegosEquipo1 + " - " +
                set.juegosEquipo2
            );
        });

        console.log(obtenerResultado(partido));
    });
}


// MOSTRAR CALENDARIO

mostrarCalendario(calendario);
