export interface Producto {
    descripcion: string;
    precio: number;
}

interface OpcionesCalculo {
    productos: Producto[];
    tasa?: number;
}

// Recibimos un objeto y desestructuramos sus propiedades.
// Si falta tasa, utilizamos 0.10.
//
// La tupla de retorno contiene exactamente dos números.
// El primero es la suma de precios y el segundo el importe del recargo.
export function calcularImportes(
    { productos, tasa = 0.10 }: OpcionesCalculo
): [number, number] {
    let subtotal = 0;

    for (const producto of productos) {
        subtotal += producto.precio;
    }

    const recargo = subtotal * tasa;

    return [subtotal, recargo];
}