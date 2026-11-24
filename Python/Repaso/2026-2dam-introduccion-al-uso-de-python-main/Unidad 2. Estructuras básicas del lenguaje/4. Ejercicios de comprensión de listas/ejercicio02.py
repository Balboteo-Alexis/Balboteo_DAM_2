"""
Muestra la lista de los jugadores que llevan el dorsal número 10. 
"""

from datos import jugadores

lista = [j for j in jugadores if j["dorsal"] == 10]
print(lista)