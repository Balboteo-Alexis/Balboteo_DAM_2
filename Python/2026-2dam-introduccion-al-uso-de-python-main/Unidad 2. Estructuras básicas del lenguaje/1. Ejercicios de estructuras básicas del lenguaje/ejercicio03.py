"""
Pedir al usuario la edad de una persona y mostrar si es mayor o menor de edad. Si
la edad es menor a 0 mostrar un mensaje de error, y si es superior a 120 indicar que
es un vampiro.
"""

edad = int(input("Dime la edad: "))

# Versión con IF
if edad < 0:
    print("Error")
elif edad >= 0 and edad < 18:
    print("Menor de edad")
elif edad >= 18 and edad <= 120:
    print("Mayor de edad")
else:
    print("Vampiro")

# Versión con MATCH
match edad:
    case e if e < 0:
        print("Error")
    case e if e >= 0 and e < 18:
        print("Menor de edad")
    case e if e >= 18 and e <= 120:
        print("Mayor de edad")
    case _:
        print("Vampiro")