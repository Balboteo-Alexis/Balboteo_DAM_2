"""Elimina todos los pokémons de tipo normal."""

from Unidades.Estructuras_Basicas.Datos import pokemons
pokemon_anormales = []

for pokemon in pokemons[:]:
    for tipo in pokemon["tipos"]:
        if tipo == "Normal":
            
            pokemons.remove(pokemon)
            
            
 
for pokemon in pokemons:
    print(pokemon["nombre"])
