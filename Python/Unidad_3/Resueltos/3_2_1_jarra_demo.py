"""Actividad 3.2 · Ejercicio 1 — Demostración en otro archivo."""

from jarra import Jarra


if __name__ == "__main__":
    primera = Jarra(500)
    segunda = Jarra(1000)
    assert (primera.contenido, segunda.contenido) == (0, 0)
    print("Jarras vacías:", primera.contenido, segunda.contenido)

    primera.llenar()
    segunda.llenar()
    assert (primera.contenido, segunda.contenido) == (500, 1000)
    print("Jarras llenas:", primera.contenido, segunda.contenido)

    segunda.vaciar()
    assert segunda.contenido == 0
    print("Segunda vacía:", primera.contenido, segunda.contenido)

    primera.servir(200)
    assert primera.contenido == 300
    print("Primera tras servir 200:", primera.contenido, segunda.contenido)

    segunda.llenar_desde(primera)
    assert (primera.contenido, segunda.contenido) == (0, 300)
    print("Después del trasvase:", primera.contenido, segunda.contenido)
