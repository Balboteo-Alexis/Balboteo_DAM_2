"""Muestra los pokémons que tengan un tipo que acabe en “a”."""

from Datos import pokemons

terminados_A =  [poke for poke in pokemons if any(tipos.endswith("a") for tipos in poke["tipos"])]

print(terminados_A)