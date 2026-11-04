"""
Pedir al usuario un número entero y añadir los x primeros números de la serie de
fibonacci desde 0 a una lista. Mostrar dicha lista al acabar. Si el número introducido
es menor que 0, mostrar un mensaje de error.
"""

numero = int(input("Número: "))
fibonacci = []

if numero < 0:
    print("Error")
elif numero == 1:
    fibonacci = [0]
elif numero == 2:
    fibonacci = [0,1]
else:
    fibonacci = [0,1]
    for i in range(3,numero + 1):
        siguiente = fibonacci[-1] + fibonacci[-2]
        fibonacci.append(siguiente)

print(fibonacci)