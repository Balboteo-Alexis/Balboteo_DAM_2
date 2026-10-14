"""Muestra el nombre, la raza y la edad de los personajes del grupo de los cuatro
héroes."""


from Datos import personajes_frieren

for pers in personajes_frieren:
    for afi in pers["afiliacion"]:
        if afi == "Grupo de los Cuatro Héroes":
            print(pers["nombre"], pers["raza"], pers["edad"])
            
            
            
