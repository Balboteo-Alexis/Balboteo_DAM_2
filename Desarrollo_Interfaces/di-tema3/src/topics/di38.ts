interface Producto {
  descripcion: string;
  precio: number;
}

const telefono: Producto = {
  descripcion: 'iPhone 15 Pro',
  precio: 1000
};

const tablet: Producto = {
  descripcion: 'iPad Air 3',
  precio: 500
};

interface CalculaImpuestoOpciones {
  impuesto: number;
  productos: Producto[];
}

// Sacamos los productos y el impuesto al recibir los datos.
function calculaImpuesto({ productos, impuesto }: CalculaImpuestoOpciones): number[] {
  let total = 0;

  // De cada producto solo necesitamos el precio.
  productos.forEach(({ precio }) => {
    total += precio;
  });

  return [total, total * impuesto];
}

const carritoCompra = [telefono, tablet];
const impuesto = 0.21;

// Guardamos por separado los dos valores que devuelve la función.
const [total, totalImpuesto] = calculaImpuesto({
  productos: carritoCompra,
  impuesto
});

console.log('Total', total);
console.log('Impuesto', totalImpuesto);

export {};