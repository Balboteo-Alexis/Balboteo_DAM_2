"""Muestra los pokémons que tengan un tipo que acabe en “a”."""

from Datos import pokemons

pokemon_Anormales = []


for pokemon in pokemons:
    for tipo in pokemon["tipos"]:
        if tipo[-1] != "a":
            pokemon_Anormales.append(pokemon)
            
            
            
for anormal in pokemon_Anormales:
    print(anormal["nombre"])