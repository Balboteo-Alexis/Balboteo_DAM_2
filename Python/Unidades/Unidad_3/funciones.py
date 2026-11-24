# 2.2  -> 1


def sumatorio(n: int) -> int:
    res = 0

    if n > 1:
        for num in range(1, 1 + n):

            res = num + res

    return res


s = sumatorio(10)


print(s)


# 2.2  -> 2


def factorial(n: int) -> list:
    factorial = 1
    res = []
    if n > 1:

        for i in range(1, n + 1):
            factorial = factorial * i
            res.append(factorial)

    return res


s = factorial(9)
print(s)


# 2.2 -> 3


def exponente(a, b) -> int:
    res = 1

    if a < 1 or b < 0:
        print("Error")

    else:
        for i in range(a):
            res = res * b
            i = i + 1

    return "resultado: ", res


print(exponente(2, 8))




# 2.1 -> 9 
"""Pedir al usuario un número entero y mostrar por pantalla si el número es primo o no."""

def primos(num) ->bool:
    primo = True
    
        
    for i in range (2, num):
        if(num % i == 0):
            primo = False
            break
        
    return primo

print(primos(3019))
