interface Jugador {
    nombre: string;
}

// Cada set contiene los juegos ganados por los dos equipos.
// Usamos SetPartido para distinguirlo del Set que ya existe en JavaScript.
type SetPartido = [number, number];

class Equipo {
    nombre: string;
    jugadores: [Jugador, Jugador];

    constructor(nombre: string, jugadores: [Jugador, Jugador]) {
        this.nombre = nombre;
        this.jugadores = jugadores;
    }
}

// Composición: un Partido tiene equipos y resultados.
class Partido {
    local: Equipo;
    visitante: Equipo;
    sets: SetPartido[];

    constructor(local: Equipo, visitante: Equipo, sets: SetPartido[] = []) {
        this.local = local;
        this.visitante = visitante;
        this.sets = sets;
    }

    resultado(): string {
        let setsLocal = 0;
        let setsVisitante = 0;

        // Desestructuramos cada pareja de números del array.
        for (const [juegosLocal, juegosVisitante] of this.sets) {
            if (juegosLocal > juegosVisitante) {
                setsLocal++;
            } else if (juegosVisitante > juegosLocal) {
                setsVisitante++;
            } else {
                return "Hay un set sin resolver";
            }
        }

        // En esta práctica, gana el primero que alcanza dos sets.
        if (setsLocal === 2 && setsVisitante < 2) {
            return `${this.local.nombre} gana por ${setsLocal}-${setsVisitante}`;
        }

        if (setsVisitante === 2 && setsLocal < 2) {
            return `${this.visitante.nombre} gana por ${setsVisitante}-${setsLocal}`;
        }

        return `Partido pendiente o resultado incompleto: ${setsLocal}-${setsVisitante}`;
    }
}

// T representa el tipo de elemento de la lista.
// El segundo argumento decide cómo convertir cada elemento en texto.
function mostrarLista<T>(
    elementos: T[],
    formatear: (elemento: T) => string
): void {
    elementos.forEach((elemento, indice) => {
        console.log(indice + 1, formatear(elemento));
    });
}

const jugador1: Jugador = { nombre: "Lucía" };
const jugador2: Jugador = { nombre: "José" };
const jugador3: Jugador = { nombre: "Ana" };
const jugador4: Jugador = { nombre: "Luis" };

const equipo1 = new Equipo("Lucía-José", [jugador1, jugador2]);
const equipo2 = new Equipo("Ana-Luis", [jugador3, jugador4]);

const jugadores = [jugador1, jugador2, jugador3, jugador4];
const equipos = [equipo1, equipo2];

const partido = new Partido(equipo1, equipo2, [
    [6, 4],
    [3, 6],
    [6, 2],
]);

console.log("Jugadores");
mostrarLista(jugadores, jugador => jugador.nombre );

console.log("Equipos");
mostrarLista(equipos, equipo => equipo.nombre);

console.log("Resultado");
console.log(partido.resultado()); // Lucía-José gana por 2-1

const pendiente = new Partido(equipo1, equipo2);
console.log(pendiente.resultado()); // Pendiente: 0-0

export {};



/*
SEGUNDA OPCIÓN: PARÁMETRO OPCIONAL CON ?

constructor(local: Equipo, visitante: Equipo, sets?: SetPartido[]) {
    this.local = local;
    this.visitante = visitante;
    this.sets = sets ?? [];
}

EJEMPLOS DE USO

const pendiente = new Partido(equipo1, equipo2);

const terminado = new Partido(equipo1, equipo2, [
    [6, 4],
    [6, 3],
]);

DIFERENCIA

sets: SetPartido[] = []
El propio parámetro recibe [] cuando se omite.

sets?: SetPartido[]
El parámetro recibe undefined cuando se omite.
Lo convertimos en [] mediante this.sets = sets ?? [].
*/