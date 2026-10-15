"""Muestra los Pokémon que tengan una altura superior a la media y un peso inferior al peso medio."""

from Datos import pokemons

alturaSuma=0
pesoSuma=0


for pokemon in pokemons:

    alturaSuma += pokemon["altura_m"]
    pesoSuma += pokemon["peso_kg"]

mediaPeso = pesoSuma / len(pokemons)
mediaAltura = alturaSuma / len(pokemons)

ninguno = True

for pokemon in pokemons:

    if pokemon["altura_m"] > mediaAltura and pokemon["peso_kg"] < mediaPeso:

        print(pokemon["nombre"], pokemon["altura_m"], pokemon["peso_kg"])
        ninguno = False


if ninguno :
    print("No hay ninguno que cumpla la condición")