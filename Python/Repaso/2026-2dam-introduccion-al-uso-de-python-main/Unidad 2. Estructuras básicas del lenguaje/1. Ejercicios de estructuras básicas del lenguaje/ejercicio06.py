"""
Supongamos que la contraseña para acceder es “12345”. Pedir al usuario la
contraseña por pantalla y, si es la correcta, mostrar un mensaje de bienvenida. Si la
contraseña introducida es incorrecta, volver a pedirla hasta que se introduzca
correctamente.
"""

contrasena_correcta = "12345"
contrasena = ""

while contrasena != contrasena_correcta:
    contrasena = input("Introduce la contraseña: ")
    
print("Bienvenid@")