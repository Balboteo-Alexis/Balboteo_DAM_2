"""Utilizando la lista series de tu archivo datos.py, crea mediante comprensión de listas una lista con los títulos de las series que cumplan todas estas condiciones:
1. Su nota general sea mayor o igual a 8.7.
2. Pertenezcan al género "Drama" o al género "Fantasía".
3. No pertenezcan al género "Terror".
4. Tengan al menos 2 reseñas."""

from datos import series

res = [ 

   serie["titulo"] for serie in series
   

    if serie["nota"] >=8.7 
    and ("Drama" in serie["generos"] 
    or "Fantasía" in serie["generos"] )
    and "Terror" not in serie["generos"] 
    and len(serie["reseñas"]) >= 2


]

print(res)


