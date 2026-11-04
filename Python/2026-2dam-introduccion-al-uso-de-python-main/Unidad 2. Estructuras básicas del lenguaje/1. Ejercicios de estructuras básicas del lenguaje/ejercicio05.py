"""
Pedir al usuario dos números enteros y mostrar los números pares dentro de dicho
intervalo. Si el primer número es mayor que el segundo se mostrará por pantalla un
mensaje de error. Realizar una versión con FOR y otra con WHILE.
"""

num1 = int(input("Número 1: "))
num2 = int(input("Número 2: "))

# Versión con FOR
if num1 > num2:
    print("Error")
else:
    for i in range(num1, num2):
        if i % 2 == 0:
            print(i)

print("==========")

# Versión con WHILE
if num1 > num2:
    print("Error")
else:
    i = num1
    while i <= num2:
        if i % 2 == 0:
            print(i)
        i = i + 1