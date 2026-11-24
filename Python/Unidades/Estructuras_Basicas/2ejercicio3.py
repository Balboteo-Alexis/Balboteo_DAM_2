"""Pedir al usuario dos números enteros (base y potencia). Calcular el resultado de
elevar la base al exponente. Mostrar un error en caso de que la base sea menor que
1 o que la potencia sea menor que 0."""


numBase = int(input("Numero base: "))

numPot = int(input("Numero potencia: "))

res = 1

if numBase < 1 or numPot < 0 :
    print("Error")
else : 
    for i in range( numPot):
        res = res * numBase
        i = i +1

    print("resultado: ", res)

