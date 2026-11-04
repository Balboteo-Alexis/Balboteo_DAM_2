"""
Pedir al usuario dos valores por pantalla: el precio de un producto (float) y el tipo de
IVA (General, Reducido, Superreducido). Calcular el precio final del producto fruto
de sumarle el IVA en función de su tipo. Realizar una versión con IF y otra con
MATCH.
"""

precio = float(input("Precio del producto: "))
tipo_iva = input("Tipo de IVA: ").lower()
precio_final = 0

# Versión con IF
if tipo_iva == "general":
    precio_final = precio + (precio * 0.21)
elif tipo_iva == "reducido":
    precio_final = precio + (precio * 0.1)
elif tipo_iva == "superreducido":
    precio_final = precio + (precio * 0.04)
else:
    precio_final = "ERROR"

print("El precio final es", precio_final)

# Versión con MATCH

match tipo_iva:
    case "general":
        precio_final = precio * 1.21
    case "reducido":
        precio_final = precio * 1.1
    case "superreducido":
        precio_final = precio * 1.04
    case _:
        precio_final = "ERROR"

print("El precio final es", precio_final)