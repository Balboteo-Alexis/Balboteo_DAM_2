"""Crea una lista de tuplas con el nombre del jugador y el texto "Goleador" si su atributo de tiro es mayor o igual a 9, o "Asistente" en caso contrario. Muéstrala."""


from datos import jugadores


res = [  

    (jugador["nombre"], "Goleador" if jugador["atributos"]["tiro"] >= 9 else "Asistente" )
    for jugador in jugadores


]

print(res)
