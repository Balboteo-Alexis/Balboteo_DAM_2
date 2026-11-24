from funciones import aplicar_funcion 

if __name__ == "__main__":
    
    print("========  Ejercicio 1 ========= ")
    
    
    print(aplicar_funcion(7, "sumatorio"))  # 0
    print(aplicar_funcion(1, "sumatorio"))  # 1
    print(aplicar_funcion(3, "sumatorio"))  # 6
    print(aplicar_funcion(4, "factorial"))  # 24


    print(aplicar_funcion(-3, "factorial"))
        # Muestra el error
    aplicar_funcion(3, "multiplicar")  # Muestra el error
    
    print("========  Ejercicio 2 ========= ")
    
    
    
    
    