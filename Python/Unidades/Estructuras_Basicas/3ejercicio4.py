"""Muestra el nombre y los tipos de los pokémons que sean de tipo agua."""

from Unidades.Estructuras_Basicas.Datos import pokemons

for pokemon in pokemons:
    for tipo in pokemon["tipos"]:
        if tipo == "Agua":
            print(pokemon)


