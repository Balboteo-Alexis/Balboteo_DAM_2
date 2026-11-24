import math

def calcularValorBruto(precio: float, tipoIVA: str) -> float:

    # Comprobamos qué tipo de IVA debemos aplicar.
    if tipoIVA == "GENERAL":
        iva = 0.21

    elif tipoIVA == "REDUCIDO":
        iva = 0.10

    elif tipoIVA == "SUPERREDUCIDO":
        iva = 0.04

    # Calculamos el importe del IVA.
    importeIVA = precio * iva

    # Sumamos el precio original y el importe del IVA.
    resultado = precio + importeIVA

    # Redondeamos hacia arriba a dos decimales.
    # El round intermedio evita pequeños errores de precisión.
    resultado = math.ceil(round(resultado * 100, 10)) / 100

    # Devolvemos el precio final.
    return resultado


# Pruebas de la función.
if __name__ == "__main__":

    print(calcularValorBruto(10, "GENERAL"))      # 12.1
    print(calcularValorBruto(10, "REDUCIDO"))     # 11.0
    print(calcularValorBruto(10, "SUPERREDUCIDO")) # 10.4
    print(calcularValorBruto(12.99, "GENERAL"))   # 15.72