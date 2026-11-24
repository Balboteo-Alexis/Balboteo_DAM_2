"""Muestra la lista de los jugadores que saben hacer la filigrana "ruleta"."""

from Unidades.Unidad2.ejerciciosGPT.datos import jugadores

res = [ 

    jugador  for jugador in jugadores

    if "ruletaw
    " in jugador["filigranas"]


]


print(res)
