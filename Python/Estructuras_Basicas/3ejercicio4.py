"""Muestra el nombre y los tipos de los pokémons que sean de tipo agua."""

from Datos import pokemons

for pokemon in pokemons:
    for tipo in pokemon["tipos"]:
        if tipo == "Agua":
            print(pokemon)


