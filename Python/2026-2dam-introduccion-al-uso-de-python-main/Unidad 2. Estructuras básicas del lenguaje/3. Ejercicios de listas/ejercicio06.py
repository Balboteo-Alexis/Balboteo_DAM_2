"""
Inserta al final de la lista un nuevo pokémon que tenga todos los campos con algún
valor con sentido (puedes inventártelos, pero que sean razonables).
"""

from datos import pokemons

nuevo_pokemon = {
    "nombre": "Giratina",
    "generacion": 3,
    "categoria": "Renegado",
    "tipos": ["Fantasma", "Dragón"],
    "peso_kg": 11.3,
    "altura_m": 2.1
}

pokemons.append(nuevo_pokemon)
print(pokemons)