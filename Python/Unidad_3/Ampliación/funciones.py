

    

def sumatorio(num: int) -> int:
    
    total = 0
    
    if num >=0:
          
        for numero in range(0,num +1):
            total = total + numero
    else:
        raise ValueError("El sumatorio admite números desde 0.")
            
    return total
        


def factorial(num: int) -> int:
    if num < 1:
        raise ValueError("El factorial admite números desde 1.")

    total = 1
    for numero in range(1, num + 1):
        total *= numero

    return total



def aplicar_funcion(num: int, cadena: str) -> int | None:
    try:
        if cadena == "sumatorio":
            return sumatorio(num)
        elif cadena == "factorial":
            return factorial(num)
        else:
            raise ValueError("La operación debe ser sumatorio o factorial.")
    except ValueError as error:
        print(f"Error: {error}")
        return None




