"""
Muestra el nombre y la altura de todos los pokémons que midan menos que la
media.
"""

from datos import pokemons
from ejercicio02 import media

for pokemon in pokemons:
    if pokemon["altura_m"] < media:
        print(pokemon["nombre"], pokemon["altura_m"])