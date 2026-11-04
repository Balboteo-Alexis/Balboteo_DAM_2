"""Extrae en una única lista todas las filigranas de todos los jugadores (no importa si hay duplicadas) y muéstrala."""


from datos import jugadores


res = [

    filigrana for jugador in jugadores
    for filigrana in jugador["filigranas"]



]

print(res)

