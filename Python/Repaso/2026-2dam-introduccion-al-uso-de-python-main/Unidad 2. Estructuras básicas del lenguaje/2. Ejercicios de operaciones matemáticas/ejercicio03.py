"""
Pedir al usuario dos números enteros (base y potencia). Calcular el resultado de
elevar la base al exponente. Mostrar un error en caso de que la base sea menor que
1 o que la potencia sea menor que 0.
"""

base = int(input("Base: "))
exponente = int(input("Exponente: "))

if base < 1 or exponente < 0:
    print("Error")
else:
    resultado = 1
    for i in range(1, exponente + 1):
        resultado = resultado * base
    print("Resultado = ", resultado)