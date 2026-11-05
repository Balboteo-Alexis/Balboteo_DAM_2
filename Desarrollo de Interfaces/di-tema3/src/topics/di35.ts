/*
    ===== Código de TypeScript =====
*/

// Definimos los datos que tiene una dirección
interface Address {
    calle: string;
    pais: string;
    ciudad: string;
}
// Definimos los datos que tiene un superhéroe
interface SuperHero {
    name: string;
    age: number;
    address: Address;
    showAddress(): string;
}

// Creamos un superhéroe con sus datos
const superHeroe: SuperHero = {
    name: 'Spiderman',
    age: 30,

    // Guardamos su dirección
    address: {
        calle: 'Main St',
        pais: 'USA',
        ciudad: 'NY'
    },
     // Devolvemos el nombre, la ciudad y el país
    showAddress() {
        return this.name + ', ' + this.address.ciudad + ', ' + this.address.pais;
    }
}

// Llamamos a la función y guardamos lo que devuelve
const address = superHeroe.showAddress();
// Mostramos el resultado por consola
console.log( address );




export {};