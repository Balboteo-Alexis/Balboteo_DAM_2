"""2. Pedir al usuario un número entero y calcular el factorial desde 1 hasta dicho número
(incluido). Si el número introducido es menor que 1, mostrar un mensaje de error."""


num1 = int(input("factorial hasta el numero: "))

if num1 <1 :
    print("Error, el numero debe ser mayor a 1.")
else:
    i = 1
    total = 0
    while i <= num1 :
        
        total = total + i
        
        
        i = i+1
        
    print(f"El resultado del sumatorio es de: {total}")
    

