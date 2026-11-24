"""
Muestra una lista con los nombres de los jugadores que pertenecen al "FC
Barcelona".
"""

from datos import jugadores

lista = [j["nombre"] for j in jugadores if j["equipo"] == "FC Barcelona"]
print(lista)