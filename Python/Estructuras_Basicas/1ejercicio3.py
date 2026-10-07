"""Pedir al usuario la edad de una persona y mostrar si es mayor o menor de edad. Si
la edad es menor a 0 mostrar un mensaje de error, y si es superior a 120 indicar que
es un vampiro."""

edad = int(input("Dime la edad de Juan: "))


if edad < 0:
    print("Error")
elif edad > 0 and edad < 18:
    print("Es menor de edad")
elif edad >18 and edad < 120:
    print("Es mayor de edad")
else: 
    print("Es un vampiro")

