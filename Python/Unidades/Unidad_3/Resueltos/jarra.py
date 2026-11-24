"""Actividad 3.2 · Ejercicio 1 — Clase Jarra."""


class Jarra:
    def __init__(self, capacidad: int, contenido: int = 0):
        if capacidad <= 0:
            raise ValueError("La capacidad debe ser mayor que cero.")
        if contenido < 0:
            raise ValueError("El contenido no puede ser negativo.")

        self.capacidad = capacidad
        self.contenido = min(contenido, capacidad)

    def llenar(self):
        self.contenido = self.capacidad

    def vaciar(self):
        self.contenido = 0

    def servir(self, cantidad: int):
        if not 0 <= cantidad <= self.contenido:
            raise ValueError("La cantidad debe estar entre cero y el contenido de la jarra.")
        self.contenido -= cantidad

    def llenar_desde(self, otra: "Jarra"):
        # Solo se trasvasa lo que cabe y lo que la otra jarra tiene disponible.
        hueco = self.capacidad - self.contenido
        cantidad = min(hueco, otra.contenido)
        otra.servir(cantidad)
        self.contenido += cantidad
