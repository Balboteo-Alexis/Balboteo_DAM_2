"""Utilizando la lista series del archivo datos.py, crea mediante comprensión de listas una lista de cadenas de texto que muestre información de cada serie con el siguiente formato:

La serie {titulo} tiene {numero_generos} géneros y {numero_reseñas} reseñas.

Por ejemplo, para Breaking Bad, el resultado debe ser exactamente:"""
from datos import series

res = [ 

    f'La serie {serie["titulo"]} tiene {len(serie["generos"])} géneros y {len(serie["reseñas"])} reseñas.'

    for serie in series
]

print(res)
