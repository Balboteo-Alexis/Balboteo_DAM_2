"""
Modifica la raza de todos los humanos que tengan 100 o más años a “Zombie”.
"""

from datos import personajes_frieren

for personaje in personajes_frieren:
    if personaje["raza"] == "Humano" and personaje["edad"] >= 100:
        personaje["raza"] = "Zombie"

for personaje in personajes_frieren:
    if personaje["raza"] == "Zombie":
        print(personaje["nombre"], personaje["raza"], personaje["edad"])