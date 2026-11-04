"""
Muestra una lista con los nombres de los jugadores que dominan más de 2 filigranas
distintas.
"""

from datos import jugadores

lista = [j["nombre"] for j in jugadores if len(j["filigranas"]) >= 2]
print(lista)