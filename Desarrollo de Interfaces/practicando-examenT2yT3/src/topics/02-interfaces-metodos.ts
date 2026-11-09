interface Personaje {
    nombre: string;
    puntosVida: number;
    puntosVidaMaximos: number;

    // Propiedad opcional.
    equipo?: string;

    // Método sin parámetros que no devuelve un resultado.
    mostrarEstado(): void;
}

const personaje: Personaje = {
    nombre: "Goku",
    puntosVida: 50,
    puntosVidaMaximos: 100,

    // En este método, llamado como personaje.mostrarEstado(),
    // this se refiere al objeto personaje.
    mostrarEstado() {
        console.log(
            `${this.nombre}: ${this.puntosVida}/${this.puntosVidaMaximos} PV`
        );
    },
};

// La función recibe el objeto y modifica su propiedad puntosVida.
function curar(personaje: Personaje, cantidad: number = 10): void {
    if (cantidad < 0) {
        console.log("La cantidad de curación debe ser positiva o cero");
        return;
    }

    // Math.min elige el menor de los dos números.
    // Así evitamos superar los puntos de vida máximos.
    personaje.puntosVida = Math.min(
        personaje.puntosVida + cantidad,
        personaje.puntosVidaMaximos
    );
}

personaje.mostrarEstado(); // 50/100

curar(personaje);
personaje.mostrarEstado(); // 60/100

curar(personaje, 80);
personaje.mostrarEstado(); // 100/100

// Aunque personaje se declaró con const, podemos modificar sus propiedades.
// const impide asignar otro objeto a la variable personaje.
personaje.equipo = "Guerreros Z";

console.table([personaje]);

export {};