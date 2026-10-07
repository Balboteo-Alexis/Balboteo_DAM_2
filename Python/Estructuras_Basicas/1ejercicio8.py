"""8. Dada la lista de videojuegos que se encuentra en el anexo II, muestra por pantalla
solo los videojuegos que cuesten más de 20€."""


videojuegos = [

{"titulo": "The Legend of Zelda: BOTW", "consola": "Nintendo Switch", "precio": 59.99},
{"titulo": "Hollow Knight", "consola": "PC", "precio": 14.99},
{"titulo": "Stardew Valley", "consola": "PlayStation 4", "precio": 13.99},
{"titulo": "Assassin's Creed Shadows", "consola": "PlayStation 5", "precio": 69.99},
{"titulo": "Resident Evil: Requiem", "consola": "PlayStation 5", "precio": 79.99},
{"titulo": "Trails in the Sky 1st Chapter", "consola": "Nintendo Switch", "precio": 49.9} ]



for juegos in videojuegos:
    if juegos["precio"] > 20 :
        print(juegos)
        