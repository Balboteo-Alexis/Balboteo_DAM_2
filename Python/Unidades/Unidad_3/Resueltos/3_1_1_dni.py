"""Actividad 3.1 · Ejercicio 1 — Letra del DNI."""

LETRAS_DNI = "TRWAGMYFPDXBNJZSQVHLCKE"


def comprobarLetraDNI(dni: str) -> bool:
    if len(dni) != 9:
        return False

    numero, letra = dni[:8], dni[8]
    # isdecimal() también admite dígitos Unicode. El DNI usa del 0 al 9.
    if not numero.isascii() or not numero.isdecimal():
        return False

    # El resto de dividir entre 23 indica la posición de la letra.
    return letra.upper() == LETRAS_DNI[int(numero) % 23]


if __name__ == "__main__":
    for dni, esperado in [
        ("12345678Z", True),
        ("12345678z", True),
        ("00000000T", True),
        ("12345678A", False),
        ("1234567Z", False),
        ("1234567AZ", False),
    ]:
        resultado = comprobarLetraDNI(dni)
        assert resultado == esperado
        print(f"{dni} -> {resultado}")
