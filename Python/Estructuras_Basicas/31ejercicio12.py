"""Elimina todos los personajes cuya raza sea demonio."""

from Datos import personajes_frieren

sin_demonios = [ pers for pers in personajes_frieren if "Demonio" not in pers["raza"] ]

for poke in sin_demonios:
    print(poke["nombre"], poke["raza"])
