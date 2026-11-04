"""Muestra una lista con los jugadores que tienen tiro >= 8 Y regate >= 9."""

from datos import jugadores

res = [  

    jugador for jugador in jugadores
    if jugador["atributos"]["tiro"] >=8 
    and jugador["atributos"]["regate"] >= 9

]

print(res)