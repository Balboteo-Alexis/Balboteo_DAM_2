"""Muestra una lista de tuplas (titulo_serie, nota_dada) de las reseñas dejadas por el usuario Elena."""

from datos import series


res = [

    (serie["titulo"], reseña["nota"]       )
    for serie in series 
    for reseña in serie["reseñas"]
    if reseña["usuario"]  =="Elena"



]

print(res)