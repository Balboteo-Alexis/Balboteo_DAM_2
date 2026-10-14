"""Muestra el nombre y la altura de todos los pokémons que midan menos que la media."""

from Datos import pokemons

sumatorio = 0

for pokemon in pokemons:
    
    sumatorio = sumatorio + pokemon["altura_m"]
    

resMedia = sumatorio / len(pokemons)



for pokemon in pokemons:
    if resMedia > pokemon["altura_m"]:
        print(pokemon[ "nombre"] , pokemon[ "altura_m" ])
