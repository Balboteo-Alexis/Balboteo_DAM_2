"""
Muestra el nombre, la raza y la edad de los personajes del grupo de los cuatro
héroes.
"""

from datos import personajes_frieren

for personaje in personajes_frieren:
    for afiliacion in personaje["afiliacion"]:
        if afiliacion == "Grupo de los Cuatro Héroes":
            print(f"{personaje['nombre']} {personaje['raza']} {personaje['raza']}")
            break