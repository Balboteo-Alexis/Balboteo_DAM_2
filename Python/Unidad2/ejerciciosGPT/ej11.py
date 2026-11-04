"""Utilizando comprensión de listas, crea una lista de tuplas que contenga:
- El título de cada serie.
- La suma de las notas de todas las reseñas de esa serie."""


from datos import series


res = [

    (serie["titulo"], sum(reseña["nota"] for reseña in serie["reseñas"]) )


    for serie in series


]

print(res)