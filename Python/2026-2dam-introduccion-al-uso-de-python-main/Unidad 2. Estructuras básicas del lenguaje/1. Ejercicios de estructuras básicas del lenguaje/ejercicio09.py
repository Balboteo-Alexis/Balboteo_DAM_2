"""
Pedir al usuario un número entero y mostrar por pantalla si el número es primo o no.
"""

es_primo = True
numero = int(input("Número: "))

if numero < 2:
    es_primo = False
else: 
    for n in range(2, int(numero/2) + 1):
        print(numero,"/",n," - Resto = ",numero%n)
        if numero % n == 0:
            es_primo = False
            break

print(es_primo)