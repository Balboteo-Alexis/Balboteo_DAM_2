// T debe ser un constructor que permita crear objetos.
// El decorador recibe la clase original.
function registrarClase<T extends new (...args: any[]) => object>(Clase: T) {
    console.log(`Decorador aplicado a ${Clase.name}`);

    // Devolvemos una clase que hereda de la original.
    // Cada instancia recibe esta propiedad adicional.
    return class extends Clase {
        etiqueta: string = "Pádel";
    };
}

@registrarClase
class Partido {
    pista: string;

    constructor(pista: string) {
        this.pista = pista;
    }
}

const partido1 = new Partido("Pista 1");
const partido2 = new Partido("Pista 2");

// El mensaje del decorador aparece al definirse la clase.
// Los dos objetos tendrán pista y etiqueta.
console.log(partido1);
console.log(partido2);

// El decorador añade etiqueta en ejecución.
// TypeScript conserva el tipo declarado originalmente para Partido,
// por lo que acceder directamente a partido1.etiqueta da un error de tipos.

export {};