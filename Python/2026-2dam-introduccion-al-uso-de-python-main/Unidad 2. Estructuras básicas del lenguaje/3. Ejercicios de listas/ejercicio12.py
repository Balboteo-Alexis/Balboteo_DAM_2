"""
Elimina todos los personajes cuya raza sea demonio.
"""

from datos import personajes_frieren

for personaje in personajes_frieren[:]:
    if personaje["raza"] == "Demonio":
        personajes_frieren.remove(personaje)

for personaje in personajes_frieren:
    print(f"{personaje['nombre']} {personaje['raza']}")