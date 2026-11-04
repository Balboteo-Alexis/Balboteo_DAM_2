"""
Muestra la lista de los jugadores que saben hacer la filigrana "ruleta".
"""

from datos import jugadores

lista = [j for j in jugadores if "ruleta" in j["filigranas"]]
print(lista)