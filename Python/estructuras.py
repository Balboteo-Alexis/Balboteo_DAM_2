numero = int(input("Ingrese un número entero: "))

if numero > 0:
    print("El número es positivo.")
elif numero < 0:
    print("El número es negativo.")
else:
    print("El número es cero.") 


######

dia = input("Ingrese un día de la semana: ")

match dia:
    case "lunes" | "martes" :
        print("Hay clases.")
    case "miércoles" | "jueves" | "viernes":
        print("No hay clases.")
    case _:
        print("Finde.")

