// Trabajando con genéricos

interface Direccion {
    calle: string;
    cp: string;
    localidad: string;
    provincia: string;
}

// CLASES

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
    {
        calle: "Calle Olivar 12",
        cp: "29010",
        localidad: "Málaga",
        provincia: "Málaga"
    },
    2
);

const jugador2 = new Jugador(
    "Hugo", "Serrano", "Masculino", "600000102",
    {
        calle: "Avenida Europa 8",
        cp: "29620",
        localidad: "Torremolinos",
        provincia: "Málaga"
    },
    2
);

const jugador3 = new Jugador(
    "Lucía", "Navarro", "Femenino", "600000103",
    {
        calle: "Calle Real 25",
        cp: "29631",
        localidad: "Benalmádena",
        provincia: "Málaga"
    },
    3
);

const jugador4 = new Jugador(
    "Paula", "Romero", "Femenino", "600000104",
    {
        calle: "Calle Granada 16",
        cp: "29015",
        localidad: "Málaga",
        provincia: "Málaga"
    },
    3
);

const jugador5 = new Jugador(
    "Adrián", "Castillo", "Masculino", "600000105",
    {
        calle: "Avenida Andalucía 40",
        cp: "29640",
        localidad: "Fuengirola",
        provincia: "Málaga"
    },
    4
);

const jugador6 = new Jugador(
    "Marcos", "Vega", "Masculino", "600000106",
    {
        calle: "Calle Jazmín 3",
        cp: "29140",
        localidad: "Málaga",
        provincia: "Málaga"
    },
    4
);


// EQUIPOS

const equipo1 = new Equipo(jugador1, jugador2);
const equipo2 = new Equipo(jugador3, jugador4);
const equipo3 = new Equipo(jugador5, jugador6);


// ÁRBITROS

const arbitro1 = new Arbitro(
    "Elena", "Ruiz", "Femenino", "600000201",
    {
        calle: "Calle Sol 7",
        cp: "29002",
        localidad: "Málaga",
        provincia: "Málaga"
    },
    1458
);

const arbitro2 = new Arbitro(
    "Francisco", "Molina", "Masculino", "600000202",
    {
        calle: "Calle Luna 14",
        cp: "29640",
        localidad: "Fuengirola",
        provincia: "Málaga"
    },
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


// FUNCIÓN GENÉRICA

function mostrarArray<T>(array: T[]): void {

    array.forEach((elemento, posicion) => {
        console.log("Posición " + posicion + ":");
        console.log(elemento);
        console.log("---------------------------");
    });

}


// OBTENER TODOS LOS JUGADORES DEL CAMPEONATO

function crearArrayJugadores(calendario: Calendario): Jugador[] {

    let jugadores: Jugador[] = [];

    calendario.partidos.forEach(partido => {

        let jugadoresPartido: Jugador[] = [
            partido.equipo1.jugador1,
            partido.equipo1.jugador2,
            partido.equipo2.jugador1,
            partido.equipo2.jugador2
        ];

        jugadoresPartido.forEach(jugador => {

            if (!jugadores.includes(jugador)) {
                jugadores.push(jugador);
            }

        });

    });

    return jugadores;
}


// MOSTRAR CALENDARIO DE PARTIDOS

console.log("CALENDARIO DE PARTIDOS");

mostrarArray<Partido>(calendario.partidos);


// MOSTRAR JUGADORES DEL CAMPEONATO

let jugadoresCampeonato: Jugador[] = crearArrayJugadores(calendario);

console.log("JUGADORES DEL CAMPEONATO");

mostrarArray<Jugador>(jugadoresCampeonato);
