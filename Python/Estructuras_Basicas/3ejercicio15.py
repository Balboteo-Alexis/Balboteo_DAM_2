"""Modifica la raza de todos los humanos que tengan 100 o más años a “Zombie”."""

from Datos import personajes_frieren

for per in personajes_frieren:
    if per["raza"] == "Humano" and per["edad"] >= 100   :

        per["raza"] = "Zombie"
        print(per)


     