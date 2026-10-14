"""Muestra la media de altura de todos los pokémons."""

from Datos import pokemons


sumatorio = 0

for pokemon in pokemons:
    
    sumatorio = sumatorio + pokemon["altura_m"]
    

res = sumatorio / len(pokemons)

print("la altura media es de: ", res)
    


