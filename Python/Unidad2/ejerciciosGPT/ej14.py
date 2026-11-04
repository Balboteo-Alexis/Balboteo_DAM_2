"""Utilizando la lista series del archivo datos.py, crea mediante comprensión de listas una lista de tuplas con:
1. El título de la serie.
2. El comentario de una reseña.
3. La cantidad de caracteres que tiene ese comentario.
Solo debes incluir comentarios que tengan más de 40 caracteres."""


from datos import series

res = [ 

    (serie["titulo"], reseña["comentario"] , len(reseña["comentario"])  )

    for serie in series
    for reseña in serie["reseñas"]
    if len(reseña["comentario"]) > 40


]

print(res)


