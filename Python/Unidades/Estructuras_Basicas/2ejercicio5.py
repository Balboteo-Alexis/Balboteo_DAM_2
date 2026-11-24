"""Pedir al usuario un número y mostrar el triángulo de pascal de ese número de filas.
En caso de que el número sea inferior a 1, mostrar un mensaje de error."""


num = int(input("Dame un numero: "))

if num < 1:
    print("Error.")
else:
    anterior = []

    for i in range(1, num + 1):
        fila = []

        for j in range(i):
            if j == 0 or j == i - 1:
                fila.append(1)
            else:
                fila.append(anterior[j - 1] + anterior[j])

        print(fila)
        anterior = fila


