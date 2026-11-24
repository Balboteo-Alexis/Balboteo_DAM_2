"""Actividad 3.1 · Ejercicio 3 — Precio con IVA."""

from decimal import Decimal, ROUND_CEILING

TIPOS_IVA = {
    "GENERAL": Decimal("0.21"),
    "REDUCIDO": Decimal("0.10"),
    "SUPERREDUCIDO": Decimal("0.04"),
}


def calcularValorBruto(precio: float, tipo_iva: str) -> float:
    if tipo_iva not in TIPOS_IVA:
        raise ValueError("Tipo de IVA desconocido.")

    # Decimal evita que el error de un float añada un céntimo al redondear.
    neto = Decimal(str(precio))
    bruto = neto * (1 + TIPOS_IVA[tipo_iva])
    return float(bruto.quantize(Decimal("0.01"), rounding=ROUND_CEILING))


if __name__ == "__main__":
    for precio, tipo, esperado in [
        (10, "GENERAL", 12.10),
        (10.01, "GENERAL", 12.12),
        (10, "REDUCIDO", 11.00),
        (10, "SUPERREDUCIDO", 10.40),
    ]:
        resultado = calcularValorBruto(precio, tipo)
        assert resultado == esperado
        print(f"{precio:.2f} € con IVA {tipo} -> {resultado:.2f} €")
