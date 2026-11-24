"""Actividad 3.1 bis · Ejercicio 3 — Conversor de divisas."""

# Cada sentido tiene su propio tipo de cambio según el PDF.
CAMBIOS = {
    "euro": {"euro": 1, "dolar": 1.09, "yen": 163.38},
    "dolar": {"euro": 0.92, "dolar": 1, "yen": 149.67},
    "yen": {"euro": 0.0061, "dolar": 0.0067, "yen": 1},
}


def cambiar_divisa(cantidad: float, origen: str, destino: str) -> float:
    origen = origen.lower()
    destino = destino.lower()
    if origen not in CAMBIOS or destino not in CAMBIOS:
        raise ValueError("Las divisas admitidas son euro, dolar y yen.")

    return round(float(cantidad) * CAMBIOS[origen][destino], 3)


if __name__ == "__main__":
    for cantidad, origen, destino, esperado in [
        (10, "euro", "dolar", 10.900),
        (1, "EURO", "YEN", 163.380),
        (1, "DOLAR", "EURO", 0.920),
        (1, "dolar", "yen", 149.670),
        (10, "yen", "euro", 0.061),
        (10, "yen", "dolar", 0.067),
        (2.5, "euro", "EURO", 2.500),
    ]:
        resultado = cambiar_divisa(cantidad, origen, destino)
        assert resultado == esperado
        print(f"{cantidad:g} {origen} -> {resultado:.3f} {destino}")
