"""Muestra una lista de tuplas (titulo_serie, comentario) para todas las reseñas que hayan dado una puntuación de 10."""


from datos import series


res = [


    (serie["titulo"], reseña["comentario"])

    for serie in series
    for reseña in serie["reseñas"]
    if reseña["nota"] == 10 



]

print(res)