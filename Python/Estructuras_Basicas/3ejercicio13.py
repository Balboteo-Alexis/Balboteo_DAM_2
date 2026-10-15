""" 13. Añádele a todos los elfos la afiliación “Elfos Supervivientes del Examen de Python” """


from Datos import personajes_frieren

for pers in personajes_frieren:
    
    if pers["raza"] == "Elfo":
        pers["afiliacion"].append("Elfos Supervivientes del Examen de Python")



for pers in personajes_frieren:
    if pers["raza"] == "Elfo":
        print(pers)


