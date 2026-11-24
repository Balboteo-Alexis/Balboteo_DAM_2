def convertirTemperatura(temperatura: float, origen: str, destino: str) -> float:

    # Si las unidades son iguales, no necesitamos convertir.
    if origen == destino:
        return round(temperatura, 2)

    # Convertimos la temperatura de origen a Celsius.
    if origen == "C":
        celsius = temperatura

    elif origen == "F":
        celsius = (temperatura - 32) * 5 / 9

    elif origen == "K":
        celsius = temperatura - 273.15

    # Convertimos de Celsius a la unidad de destino.
    if destino == "C":
        resultado = celsius

    elif destino == "F":
        resultado = celsius * 9 / 5 + 32

    elif destino == "K":
        resultado = celsius + 273.15

    # Devolvemos el resultado redondeado a dos decimales.
    return round(resultado, 2)


# Pruebas de la función.
if __name__ == "__main__":

    print(convertirTemperatura(10, "F", "C"))
    print(convertirTemperatura(25, "C", "F"))
    print(convertirTemperatura(100, "C", "K"))
    print(convertirTemperatura(300, "K", "C"))
    print(convertirTemperatura(300, "K", "F"))
    print(convertirTemperatura(25, "C", "C"))