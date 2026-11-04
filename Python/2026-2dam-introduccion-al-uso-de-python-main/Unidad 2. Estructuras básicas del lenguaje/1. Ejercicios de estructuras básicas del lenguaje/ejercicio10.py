"""
Pedir al usuario dos valores enteros y mostrar por pantalla todos los números primos
dentro de ese rango. Si el primer número es mayor que el segundo se mostrará por
pantalla un mensaje de error.
"""

n1 = int(input("Número 1: "))
n2 = int(input("Número 2: "))

if n1 > n2:
    print("Error")
else:
    for i in range(n1, n2 + 1):
        es_primo = True

        if i < 2:
            es_primo = False
        else: 
            for j in range(2, int(i/2) + 1):
                if i % j == 0:
                    es_primo = False
                    break
        if es_primo: 
            print(i)

