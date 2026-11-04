"""
Muestra los pokémons que tengan un tipo que acabe en “a”.
"""

from datos import pokemons

for pokemon in pokemons:
    for tipo in pokemon["tipos"]:
        if tipo[-1] == "a":
            print(pokemon["nombre"])