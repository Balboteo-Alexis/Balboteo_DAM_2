"""Muestra los títulos de las series que sean de Fantasía o Misterio."""



from datos import series


res = [

    serie["titulo"] for serie in series

    if "Fantasía"  in serie["generos"] or  "Misterio"  in serie["generos"]



]

print(res)
