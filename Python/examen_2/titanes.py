# Alexis Balboteo 

from datos import personajes

def ejercicio1():
    vivos = [
        
        pers["nombre"] for pers in personajes
        if pers["afiliacion"] == "Cuerpo de Exploración" 
        and pers["vivo"] == True
    ]
    print(vivos)
    
def ejercicio2():
    
    resultado = [
        
        pers["nombre"] for pers in personajes
        if pers["afiliacion"] == "Cuerpo de Exploración" 
        and "Supervivencia" in pers["habilidades"]
        and "Sigilo" in pers["habilidades"]
    ]
    
    print(resultado)
    
def ejercicio3():
    
    resultado = [
        
        (pers["nombre"], pers["afiliacion"])
        for pers in personajes
        if "Cuerpo de Exploración" not in pers["afiliacion"]
    ]
    print(resultado)
    
    
def ejercicio4():
    resultado = [ 
                     
        f'{pers["nombre"]} "{pers["afiliacion"]}"'
        for pers in personajes
        if pers["registro_combate"]["misiones_completadas"] >= 20
    ]
    
    print(resultado)
    
    
    
def ejercicio5():
    resultado = [

        (pers["nombre"], pers["estatura_m"] * 100)
        for pers in personajes
        if pers["estatura_m"] > 1.7
    ]
    print(resultado)
    
    
def ejercicio6():
    
    resultado = [
    
        habilidad for pers in personajes
        for habilidad in pers["habilidades"]
          
    ]
    print(resultado)
    

def ejercicio7():
    
    resultado = [
        
        pers["nombre"] for pers in personajes
        if pers["registro_combate"]["titanes_solo"] + pers["registro_combate"]["titanes_equipo"] >= 5         
          
              
    ]
    print(resultado)
    
    
    
    

def ejercicio8():
    
    resultado = [
        
        {     
            "nombre" : pers["nombre"],
            "titanes_totales": pers["registro_combate"]["titanes_solo"] + pers["registro_combate"]["titanes_equipo"]          
        }    
        for pers in personajes
              
    ]
    print(resultado)
    
    
    

def ejercicio9():
    
    resultado = [
        
       pers["estatura_m"]
       for pers in personajes      
    ]
    
    print(sum(resultado))
    
    
    

def ejercicio10():
    
    alturas = [
        
        pers["estatura_m"]
        for pers in personajes
             
    ]
    
    mediaAltura  = sum(alturas) / len(alturas)
    
    resultado = [
        
        (pers["nombre"], pers["estatura_m"])
        for pers in personajes
        if pers["estatura_m"] > mediaAltura
        
    ]

    print(resultado)