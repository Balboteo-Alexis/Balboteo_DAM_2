"""6. Supongamos que la contraseña para acceder es “12345”. Pedir al usuario la
contraseña por pantalla y, si es la correcta, mostrar un mensaje de bienvenida. Si la
contraseña introducida es incorrecta, volver a pedirla hasta que se introduzca
correctamente."""



contrasena = 12345

num = int(input("Dime la contraseña: "))



while num != contrasena:
    print("Error")
    
    num = int(input("Dime la contraseña: "))
    
    
print("Bienvenido")

    

