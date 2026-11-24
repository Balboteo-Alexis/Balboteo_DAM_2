"""Pedir al usuario un número entero y añadir los x primeros números de la serie de
fibonacci desde 0 a una lista. Mostrar dicha lista al acabar. Si el número introducido
es menor que 0, mostrar un mensaje de error."""
"""0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55,"""


num = int(input("Dame un número: "))

fibonacci = []

if num < 0:
    print("Error")
else:
    a = 0
    b = 1

    for i in range(num):
        fibonacci.append(a)

        siguiente = a + b
        a = b
        b = siguiente

    print(fibonacci)




