"""
Muestra la media de altura de todos los pokémons.
"""

from datos import pokemons

#numero_pokemons = len(pokemons)
#suma_alturas = 0

#for pokemon in pokemons:
#    suma_alturas = suma_alturas + pokemon["altura_m"]

#media = suma_alturas / numero_pokemons
media = sum(p["altura_m"] for p in pokemons) / len(pokemons)

print("La media es ", round(media,2), " metros")