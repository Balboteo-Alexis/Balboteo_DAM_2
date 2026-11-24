"""Elimina todos los pokémons de tipo normal."""

from Unidades.Estructuras_Basicas.Datos import pokemons

anormales = [poke for poke in pokemons if "Normal" not in poke["tipos"]]

for poke in anormales:
    print(poke["nombre"], poke["tipos"])







