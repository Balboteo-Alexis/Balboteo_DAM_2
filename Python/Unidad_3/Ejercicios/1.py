"""Crea una función llamada comprobarLetraDNI"""

def comprobarLetraDNI (dni: str):
    
    correcto = True
    letra = dni[-1]
    numeros = dni[0:8]
    
    
    print(letra)
    print(numeros)
    
    if(numeros.isdigit() and len(numeros) == 8) :
        
        resto =  int(numeros) % 23
        
        list = ["T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"]
        
        if letra != list[resto] : 
           
           correcto =  False 
        
    return correcto

print(comprobarLetraDNI("12345678Z"))
    