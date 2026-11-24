"""
Muestra el nombre y la raza de todos los personajes que sean magos de primera
clase.
"""

from datos import personajes_frieren

for personaje in personajes_frieren:
    for afiliacion in personaje["afiliacion"]:
        if afiliacion == "Magos de Primera Clase":
            print(f"{personaje['nombre']} {personaje['raza']}")
            break