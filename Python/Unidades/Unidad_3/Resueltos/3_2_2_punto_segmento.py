"""Actividad 3.2 · Ejercicio 2 — Punto y Segmento."""

from math import hypot


class Punto:
    def __init__(self, coordenadaX: int = 0, coordenadaY: int = 0):
        if not (-100 <= coordenadaX <= 100 and -100 <= coordenadaY <= 100):
            raise ValueError("Las coordenadas deben estar entre -100 y 100.")

        self.coordenadaX = coordenadaX
        self.coordenadaY = coordenadaY

    def __str__(self):
        return f"Punto({self.coordenadaX}, {self.coordenadaY})"

    def __eq__(self, otro):
        if not isinstance(otro, Punto):
            return NotImplemented
        return self.coordenadaX == otro.coordenadaX and self.coordenadaY == otro.coordenadaY


class Segmento:
    def __init__(self, puntoA: Punto = None, puntoB: Punto = None):
        # Cada segmento obtiene sus propios puntos si se omiten los argumentos.
        self.puntoA = Punto() if puntoA is None else puntoA
        self.puntoB = Punto(1, 1) if puntoB is None else puntoB

    def __str__(self):
        return f"Segmento[{self.puntoA}, {self.puntoB}]"

    def longitud(self) -> float:
        diferencia_x = self.puntoB.coordenadaX - self.puntoA.coordenadaX
        diferencia_y = self.puntoB.coordenadaY - self.puntoA.coordenadaY
        # hypot calcula la raíz cuadrada de dx² + dy².
        return hypot(diferencia_x, diferencia_y)

    def __eq__(self, otro):
        if not isinstance(otro, Segmento):
            return NotImplemented
        return self.puntoA == otro.puntoA and self.puntoB == otro.puntoB


if __name__ == "__main__":
    punto_a = Punto(3, 4)
    punto_b = Punto(3, -3)
    segmento = Segmento(punto_a, punto_b)
    longitud = segmento.longitud()

    assert longitud == 7.0
    assert segmento == Segmento(Punto(3, 4), Punto(3, -3))
    assert segmento != Segmento(punto_b, punto_a)
    assert Segmento() == Segmento(Punto(0, 0), Punto(1, 1))
    print(segmento)
    print(f"Longitud: {longitud}")
