"""
Muestra en una sóla línea el nombre y el peso del pokémon con más peso.
"""

# from fichero import variable
from datos import pokemons

pokemon_mas_pesado = pokemons[0]

for pokemon in pokemons:
    if pokemon["peso_kg"] > pokemon_mas_pesado["peso_kg"]:
        pokemon_mas_pesado = pokemon

print(pokemon_mas_pesado["nombre"], " pesa ", pokemon_mas_pesado["peso_kg"])