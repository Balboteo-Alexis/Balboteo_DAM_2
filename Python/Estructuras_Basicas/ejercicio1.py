"""Pedir al usuario una nota numérica entera mediante un input y diga si la calificación
es Suspenso, Aprobado, Notable, Sobresaliente, o No válida (en caso de que la
entrada sea diferente a la esperada). Realizar una versión con IF y otra con MATCH."""


nota = int(input("Dime la nota:"))

if nota >= 0 and nota < 5 :
    print("Suspenso")
elif nota >= 5 and nota < 7:
    print("Aprobado")
elif nota >= 7 and nota < 9:
    print("Notable")
elif nota < 10:
    print("Sobresaliente")
else: 
    print("No valida")


# Version con MATCH

match nota:
    case n if n >= 0 and n < 5:
        print("Suspenso")
    case n if n >= 5 and n < 7: 
        print("Aprobado")
    case n if n >= 7 and n < 9:
        print("Notable")
    case n if n >= 9 and n <= 10:
        print("Sobresaliente")
    case _:
        print("No valida")  
