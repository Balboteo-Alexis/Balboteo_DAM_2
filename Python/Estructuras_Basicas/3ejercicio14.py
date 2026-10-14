"""A todos los personajes que pertenezcan a la Asociación Continental de Magia,
quítales esa afiliación."""

from Datos import personajes_frieren

for pers in personajes_frieren:
    for afi in pers["afiliacion"]:
        if afi == "Asociación Continental de Magia":
            pers["afiliacion"].remove(afi)
    

    
    
for pers in personajes_frieren:
    print(pers["nombre"],pers["afiliacion"])