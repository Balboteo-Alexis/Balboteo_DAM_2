"""Inserta al final de la lista un nuevo pokémon que tenga todos los campos con algún
valor con sentido (puedes inventártelos, pero que sean razonables)."""

from Datos import pokemons

pokemon = [{
"nombre": "Bulbasaur",
"generacion": 1,

"categoria": "Semilla",
"tipos": ["Planta", "Veneno"],
"peso_kg": 6.9,
"altura_m": 0.7
}
           
]



pokemons.append(pokemon)

print(pokemons)