"""Actividad 3.1 · Ejercicio 2 — Conversión de temperaturas."""


def convertirTemperatura(temperatura: float, origen: str, destino: str) -> float:
    unidades = ("C", "K", "F")
    if origen not in unidades or destino not in unidades:
        raise ValueError("Las unidades deben ser C, K o F.")

    if origen == destino:
        return round(float(temperatura), 2)

    # Pasamos primero a Celsius y redondeamos solo el resultado final.
    celsius = float(temperatura)
    if origen == "K":
        celsius -= 273.15
    elif origen == "F":
        celsius = (celsius - 32) * 5 / 9

    if destino == "K":
        return round(celsius + 273.15, 2)
    if destino == "F":
        return round(celsius * 9 / 5 + 32, 2)
    return round(celsius, 2)


if __name__ == "__main__":
    for valor, origen, destino, esperado in [
        (10, "F", "C", -12.22),
        (32, "F", "K", 273.15),
        (0, "C", "K", 273.15),
        (100, "C", "F", 212.0),
        (273.15, "K", "C", 0.0),
        (273.15, "K", "F", 32.0),
        (20, "C", "C", 20.0),
    ]:
        resultado = convertirTemperatura(valor, origen, destino)
        assert resultado == esperado
        print(f"{valor} {origen} -> {resultado:.2f} {destino}")
