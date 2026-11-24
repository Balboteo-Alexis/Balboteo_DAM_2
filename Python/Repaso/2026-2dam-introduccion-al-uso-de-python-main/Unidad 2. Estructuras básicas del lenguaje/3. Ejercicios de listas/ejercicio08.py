"""
Muestra la edad media de los personajes humanos.
"""

from datos import personajes_frieren

suma_edad = 0
n_humanos = 0

for personaje in personajes_frieren:
    if personaje["raza"] == "Humano":
        #print(f"{personaje['nombre']} {personaje['raza']}")
        n_humanos = n_humanos + 1
        suma_edad = suma_edad + personaje["edad"]

media_edad = suma_edad / n_humanos
print(f"La media de edad de los humanos es {media_edad}")