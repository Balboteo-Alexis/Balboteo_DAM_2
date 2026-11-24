"""
Muestra una lista con los jugadores que tienen tiro >= 8 Y regate >= 9.
"""

from datos import jugadores

lista = [j for j in jugadores if j["atributos"]["tiro"] >= 8 and j["atributos"]["regate"] >= 9]
print(lista)