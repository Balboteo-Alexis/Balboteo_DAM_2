from datos import personajes

def ejercicio1():
    nuevo_personaje = {
        "nombre" : "Krilin",
        "raza" : "Humano",
        "nivel" : 12000000,
        "tecnicas" : ["Morir", "Comer"],
        "atributos" : {"fuerza" : 75, "defensa" : 74, "velocidad" : 77}
    }
    personajes.append(nuevo_personaje)

def ejercicio2():
    for personaje in personajes:
        media = (personaje["atributos"]["fuerza"] + personaje["atributos"]["defensa"] + personaje["atributos"]["velocidad"]) / 3 
        if media > 80:
            print(personaje)

def ejercicio3():
    suma_velocidades = 0
    for personaje in personajes:
        suma_velocidades += personaje["atributos"]["velocidad"]
    media = suma_velocidades / len(personajes)

    for personaje in personajes:
        if personaje["atributos"]["velocidad"] > media:
            print(personaje)

def ejercicio4():
    for personaje in personajes:
        for tecnica in personaje["tecnicas"]:
            if tecnica == "Big Bang Attack":
                if personaje["atributos"]["fuerza"] + 10 <= 100:
                    personaje["atributos"]["fuerza"] += 10
                else:
                    personaje["atributos"]["fuerza"] = 100
        print(personaje["nombre"], personaje["atributos"]["fuerza"])

def ejercicio5():
    fuerza_vegeta = 0
    for personaje in personajes:
        if personaje["nombre"] == "Vegeta":
            fuerza_vegeta = personaje["atributos"]["fuerza"]
            break

    for personaje in personajes:
        if personaje["atributos"]["defensa"] < fuerza_vegeta and personaje["nombre"] != "Vegeta":
            print(personaje["nombre"], personaje["atributos"]["defensa"])

def ejercicio6():
    for personaje in personajes[:]:
        if personaje["raza"] == "Saiyan":
            personajes.remove(personaje)
    print(personajes)