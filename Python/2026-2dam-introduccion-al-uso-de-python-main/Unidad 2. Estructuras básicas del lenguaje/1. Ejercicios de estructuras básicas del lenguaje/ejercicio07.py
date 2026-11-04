"""
Dada la lista de videojuegos que se encuentra en el anexo I, muestra por pantalla
solo los videojuegos cuyo título empiece por M.
"""

videojuegos = ("Super Mario Bros", "New Super Mario Bros", "Mario vs Luigi", "Mario Kart")

for videojuego in videojuegos:
    if videojuego[0] == "M":
        print(videojuego)