"""
Pedir al usuario un número entero y calcular el sumatorio desde 1 hasta dicho
número (incluido). Si el número introducido es menor que 1, mostrar un mensaje de
error.
"""

numero = int(input("Número: "))

sumatorio = 0

if numero < 1:
    print("Error")
else:
    for i in range(1, numero + 1):
        sumatorio = sumatorio + i
    print("Sumatorio: ", sumatorio)