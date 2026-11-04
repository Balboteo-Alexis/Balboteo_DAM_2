"""Muestra la lista de los jugadores que saben hacer la filigrana "ruleta"."""

from datos import jugadores

res = [ 

    jugador  for jugador in jugadores

    if "ruleta" in jugador["filigranas"]


]


print(res)
