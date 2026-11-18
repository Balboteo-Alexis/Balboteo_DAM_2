import math

GENERAL = 0.21
REDUCIDO = 0.10
SUPERREDUCIDO = 0.04

def calcularValorBruto(valor_neto : float, tipo_iva : str) -> float:
    """Calcula el valor bruto de un producto partiendo del valor neto y el tipo de IVA aplicable

    Params:
        valor_neto (float): Valor neto del producto, en euros
        tipo_iva (str): Tipo de IVA aplicable. Solo acepta los valores GENERAL, REDUCIDO Y SUPERREDUCIDO

    Returns:
        (float) : Valor bruto del producto tras aplicar el IVA
    """
    if valor_neto < 0:
        raise ValueError("El valor neto no puede ser negativo")

    tipo_iva = tipo_iva.lower()
    if tipo_iva not in ["general", "reducido", "superreducido"]:
        raise ValueError("El tipo de IVA solo puede ser GENERAL, REDUCIDO o SUPERREDUCIDO")

    valor_bruto = 0

    if tipo_iva == "general":
        valor_bruto = valor_neto * GENERAL + valor_neto
    elif tipo_iva == "reducido":
        valor_bruto = valor_neto * REDUCIDO + valor_neto
    elif tipo_iva == "superreducido":
        valor_bruto = valor_neto * SUPERREDUCIDO + valor_neto

    return math.ceil(valor_bruto * 100) / 100

print(calcularValorBruto(17,"general"))