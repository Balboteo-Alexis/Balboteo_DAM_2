"""
Elimina todos los pokémons de tipo normal.
"""

from datos import pokemons

for pokemon in pokemons[:]:
    for tipo in pokemon["tipos"]:
        if tipo == "Normal":
            pokemons.remove(pokemon)

for pokemon in pokemons:
    print(pokemon["nombre"])