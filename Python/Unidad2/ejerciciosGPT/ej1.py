"""Muestra una lista con los nombres de los jugadores que pertenecen al "FC Barcelona"."""

from datos import jugadores

res = [

    jugador["nombre"] for jugador in jugadores
    if jugador["equipo"] == "FC Barcelona"


]

print(res)