"""Actividad 3.1 bis · Ejercicio 1 — Sumatorio y factorial."""


def sumatorio(numero: int) -> int:
    if type(numero) is not int or numero < 0:
        raise ValueError("El sumatorio requiere un entero mayor o igual que 0.")

    total = 0
    # El extremo final de range se excluye, por eso se suma 1.
    for valor in range(numero + 1):
        total += valor
    return total


def factorial(numero: int) -> int:
    if type(numero) is not int or numero < 1:
        raise ValueError("El factorial de este ejercicio requiere un entero mayor o igual que 1.")

    producto = 1
    for valor in range(1, numero + 1):
        producto *= valor
    return producto


def aplicar_funcion(numero: int, operacion: str):
    # Las funciones de cálculo validan su propio rango. Aquí mostramos el error.
    try:
        if operacion == "sumatorio":
            return sumatorio(numero)
        if operacion == "factorial":
            return factorial(numero)
        raise ValueError("La operación debe ser sumatorio o factorial.")
    except ValueError as error:
        print(f"Error: {error}")
        return None


if __name__ == "__main__":
    for numero, operacion, esperado in [
        (3, "factorial", 6),
        (5, "sumatorio", 15),
        (0, "sumatorio", 0),
        (1, "factorial", 1),
    ]:
        resultado = aplicar_funcion(numero, operacion)
        assert resultado == esperado
        print(f"{operacion}({numero}) -> {resultado}")

    for numero, operacion in [(-3, "factorial"), (0, "factorial"), (-1, "sumatorio")]:
        resultado = aplicar_funcion(numero, operacion)
        assert resultado is None
