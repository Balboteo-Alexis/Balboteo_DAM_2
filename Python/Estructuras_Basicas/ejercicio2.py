"""Pedir al usuario dos valores por pantalla: el precio de un producto (float) y el tipo de
IVA (General, Reducido, Superreducido). Calcular el precio final del producto fruto
de sumarle el IVA en función de su tipo. Realizar una versión con IF y otra con
MATCH."""

precio_producto = float(input("El precio de un producto: "))
iva = input ("Tipo de IVA: ")

if iva == "General":
    precio_final = precio_producto * 1.21
elif iva == "Reducido":
    precio_final = precio_producto * 1.15
elif iva == "Superreducido":
    precio_final = precio_producto * 1.07
else: 
    precio_final= -1


print(f"Precio final del producto: {precio_final}" )

