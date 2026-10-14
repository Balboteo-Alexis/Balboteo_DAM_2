"""Muestra el nombre y la raza de todos los personajes que sean magos de primera
clase."""

from Datos import personajes_frieren

for pers in personajes_frieren:
    
    for afi in pers["afiliacion"]:
        
        if afi == "Magos de Primera Clase":
            print(pers["nombre"], pers["raza"])
            
    
    

