"""Actividad 3.1 bis · Ejercicio 2 — Estado de las especies."""

animales = [
    ["Lobo ibérico", "Mamífero", 2500],
    ["Lince ibérico", "Mamífero", 1668],
    ["Quebrantahuesos", "Ave", 2000],
    ["Oso pardo", "Mamífero", 500],
]


def comprobar_estado(especie: str) -> str:
    buscada = especie.casefold()
    for nombre, _grupo, ejemplares in animales:
        if nombre.casefold() != buscada:
            continue

        # Las condiciones se comprueban de menor a mayor.
        if ejemplares == 0:
            return "Extinto"
        if ejemplares <= 500:
            return "En peligro crítico"
        if ejemplares <= 2000:
            return "En peligro"
        return "Amenazado"

    # Solo lanzamos la excepción tras recorrer toda la lista.
    raise ValueError(f"La especie {especie!r} no está en la lista.")


if __name__ == "__main__":
    for especie, esperado in [
        ("LOBO IBÉRICO", "Amenazado"),
        ("lince ibérico", "En peligro"),
        ("Quebrantahuesos", "En peligro"),
        ("oso pardo", "En peligro crítico"),
    ]:
        resultado = comprobar_estado(especie)
        assert resultado == esperado
        print(f"{especie} -> {resultado}")

    try:
        comprobar_estado("Tigre")
    except ValueError as error:
        print(f"Error esperado: {error}")
    else:
        raise AssertionError("Faltó la excepción para una especie desconocida.")
