from datos import personajes

def ejercicio1():
    
    print("Ejercicio 1")
    
    personaje1 = {
        
        "nombre": "Manuel",
        "raza": "Saiyan",
        "nivel_pelea": 3000,
        "tecnicas": ["Galick Ho", "Honda vital"],
        "atributos": {"fuerza": 50, "defensa": 45, "velocidad": 10}
        }
    
    
    
    
    personajes.append(personaje1)
    
def ejercicio2():
    
    print("Ejercicio 2")
    
    for pers in personajes:
                   
        sumaEstadisticas = 0
                   
        sumaEstadisticas = pers["atributos"] [ "fuerza"]
        sumaEstadisticas = sumaEstadisticas + pers["atributos"] ["defensa"]
        sumaEstadisticas = sumaEstadisticas + pers["atributos"] ["velocidad"]
            
        media = sumaEstadisticas /3 
        if media > 80:
            print(pers)
            
            

def ejercicio3():
    
    print("Ejercicio 3")
    
    sumaVelocidad=0
    
    for pers in personajes:
    
        sumaVelocidad = sumaVelocidad + pers["atributos"] ["velocidad"]
        
    mediaVelocidad = sumaVelocidad / len(personajes)
    
    for pers in personajes:
        if mediaVelocidad < pers["atributos"] ["velocidad"] : 
            print(pers)
            
            
def ejercicio4():
    
    print("Ejercicio 4")
    
    for pers in personajes:
        for nombreTec in pers["tecnicas"]:
            if nombreTec == "Big Bang Attack":
                
                pers["atributos"]["fuerza"] = pers["atributos"]["fuerza"] +10
                if pers["atributos"]["fuerza"] > 100:
                    pers["atributos"]["fuerza"] = 100
                    
                    
        print(pers["nombre"],pers["atributos"]["fuerza"])
        
def ejercicio5():
    
    print("Ejercicio 5")
    
    for pers in personajes:
        if pers["nombre"] == "Vegeta":
            
            for contrincante in personajes:
                if contrincante["nombre"] != "Vegeta":
                    
                    if contrincante["atributos"] ["defensa"] < pers["atributos"]["fuerza"]:
                   
                        print(contrincante["nombre"], contrincante["atributos"]["defensa"])
                
                
                
def ejercicio6():
    
    print("ejercicio 6")

    for pers in personajes[:]:
        if pers["raza"] == "Saiyan":
            personajes.remove(pers)
    
    for pers in personajes:
        print(pers)