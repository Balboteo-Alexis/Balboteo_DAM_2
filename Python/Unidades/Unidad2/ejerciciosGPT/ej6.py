"""Extrae en una única lista todas las filigranas de todos los jugadores (no importa si hay duplicadas) y muéstrala."""


from Unidades.Unidad2.ejerciciosGPT.datos import jugadores


res = [

    filigrana for jugador in jugadores
    for filigrana in jugador["filigranas"]



]

print(res)

