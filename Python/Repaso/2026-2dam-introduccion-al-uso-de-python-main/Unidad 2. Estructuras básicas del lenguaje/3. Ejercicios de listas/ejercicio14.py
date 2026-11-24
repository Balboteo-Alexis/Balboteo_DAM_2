"""
A todos los personajes que pertenezcan a la Asociación Continental de Magia,
quítales esa afiliación.
"""

from datos import personajes_frieren

for personaje in personajes_frieren:
    for afiliacion in personaje["afiliacion"]:
        if afiliacion == "Asociación Continental de Magia":
            personaje["afiliacion"].remove("Asociación Continental de Magia")

for personaje in personajes_frieren:
    for afiliacion in personaje["afiliacion"]:
        if afiliacion == "Asociación Continental de Magia":
            print(personaje)