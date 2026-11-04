"""Utilizando la lista series de tu archivo datos.py, crea mediante comprensión de listas una nueva lista de diccionarios.

Cada nuevo diccionario deberá tener únicamente estas cuatro claves:
Clave	Valor que debe contener
"titulo"	Título de la serie
"nota"	Nota general de la serie
"numero_generos"	Cantidad de géneros de la serie
"numero_reseñas"	Cantidad de reseñas de la serie

Por ejemplo, el diccionario correspondiente a Breaking Bad deberá ser:"""
from datos import series

res = [
    {
        "titulo": serie["titulo"],
        "nota": serie["nota"],
        "numero_generos": len(serie["generos"]),
        "numero_reseñas": len(serie["reseñas"]) 
    }
    for serie in series
]


print(res)
