"""Elimina todos los personajes cuya raza sea demonio."""

from Datos import personajes_frieren

for pers in personajes_frieren:
    if pers["raza"] == "Demonio":
        personajes_frieren.remove(pers)
        
  
for pers in personajes_frieren:
    print(pers["nombre"], pers["raza"])
        


