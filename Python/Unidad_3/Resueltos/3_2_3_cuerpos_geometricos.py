"""Actividad 3.2 · Ejercicio 3 — Cuerpos geométricos."""

from abc import ABC, abstractmethod
from math import isclose, pi


class CuerpoGeometrico(ABC):
    @abstractmethod
    def superficie(self):
        """Devuelve la superficie total del cuerpo."""

    @abstractmethod
    def volumen(self):
        """Devuelve el volumen del cuerpo."""


class Cubo(CuerpoGeometrico):
    def __init__(self, lado: int = 1):
        self.lado = lado

    def __str__(self):
        return f"Cubo(Lado = {self.lado})"

    def volumen(self) -> int:
        return self.lado ** 3

    def superficie(self) -> int:
        # El cubo tiene seis caras cuadradas.
        return 6 * self.lado ** 2


class Cilindro(CuerpoGeometrico):
    def __init__(self, radio: int = 1, altura: int = 1):
        self.radio = radio
        self.altura = altura

    def __str__(self):
        return f"Cilindro(Radio = {self.radio}, Altura = {self.altura})"

    def volumen(self) -> float:
        return pi * self.radio ** 2 * self.altura

    def superficie(self) -> float:
        # Superficie de las dos bases más la superficie lateral.
        return 2 * pi * self.radio * (self.radio + self.altura)


if __name__ == "__main__":
    cilindro = Cilindro(2, 4)
    cubo = Cubo(3)

    assert cubo.superficie() == 54 and cubo.volumen() == 27
    assert isclose(cilindro.superficie(), 24 * pi)
    assert isclose(cilindro.volumen(), 16 * pi)

    for cuerpo in (cubo, cilindro):
        print(cuerpo)
        print(f"Superficie: {cuerpo.superficie()}")
        print(f"Volumen: {cuerpo.volumen()}")
