// Producto solo se utiliza como tipo.
import type { Producto } from "./auxiliares/calculos-productos";

// calcularImportes es una función que vamos a ejecutar.
import { calcularImportes } from "./auxiliares/calculos-productos";

const productos: Producto[] = [
    {
        descripcion: "Teclado",
        precio: 30,
    },
    {
        descripcion: "Ratón",
        precio: 20,
    },
];

// Pasamos un objeto con las opciones.
// Desestructuramos la tupla que devuelve la función.
const [subtotal, recargo] = calcularImportes({
    productos,
    tasa: 0.10,
});

console.table(productos);
console.log("Subtotal", subtotal);             // 50
console.log("Recargo", recargo);               // 5
console.log("Total", subtotal + recargo);       // 55

// Omitimos tasa para utilizar el valor por defecto.
console.log("Con tasa por defecto", calcularImportes({ productos }));

// Una tasa de cero debe conservarse.
console.log("Sin recargo", calcularImportes({ productos, tasa: 0 }));