"""Muestra el nombre y la raza de todos los personajes que sean magos.”"""

from Datos import personajes_frieren

magos = [ pers for pers in personajes_frieren  if "Mago" in pers["clase"] ]

for mago in magos:
    print(mago["nombre"], mago["clase"], mago["edad"])