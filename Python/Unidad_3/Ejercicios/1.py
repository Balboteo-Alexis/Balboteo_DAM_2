"""Crea una función llamada comprobarLetraDNI"""

def comprobarLetraDNI (dni: str):
    
    correcto = False
    letra = dni[-1]
    numeros = dni[0:7]
    
    if(numeros.isdigit and len(numeros) == 8) :
        
        resto = numeros % 23
        
        list = ["T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"]
        
        if letra == list[resto] : 
           
           correcto =  True 
        
    return correcto

print(comprobarLetraDNI("79292306J"))
    