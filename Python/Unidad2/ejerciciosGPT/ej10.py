"""Muestra una lista de tuplas que incluya el título de la serie y “Obra maestra” si las notas medias dadas en las reseñas es igual o superior a 9, y “Gran serie” en caso contrario."""


from datos import series


res = [

    (serie["titulo"]  , "Obra maestra" 
     if (sum(reseña["nota"] for reseña in serie["reseñas"])/ len(serie["reseñas"]))   >=9 else "Gran serie"  )

    for serie in series
    

]

print(res)