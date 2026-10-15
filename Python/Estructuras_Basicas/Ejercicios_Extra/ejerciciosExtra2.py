"""Muestra cuál es la raza con mayor número de personajes y cuántos tiene."""

from Datos import personajes_frieren

vecesComun = 0 
vecesSiguiente = 0
razaComun = "Ninguna"


for pers1 in personajes_frieren:

    

    
    for pers2 in personajes_frieren:

        if pers1["raza"] == pers2["raza"]:

            vecesSiguiente = vecesSiguiente +1




    if vecesSiguiente > vecesComun:
    
        vecesComun = vecesSiguiente
        razaComun = pers1["raza"]

    vecesSiguiente = 0


    

print("La raza más común es:", razaComun, "con", vecesComun, "personajes")








