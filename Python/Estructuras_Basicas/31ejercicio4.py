"""Muestra el nombre y los tipos de los pokémons que sean de tipo agua."""

from Datos import pokemons


tipo_agua = [poke for poke in pokemons for tipo in poke["tipos"] if tipo == "Agua"]

agua = [poke for poke in pokemons if "Agua" in poke["tipos"]]

for poke in agua:
    print(poke["nombre"], poke["tipos"])
    
    
for poke in tipo_agua:
    print(poke["nombre"], poke["tipos"])
