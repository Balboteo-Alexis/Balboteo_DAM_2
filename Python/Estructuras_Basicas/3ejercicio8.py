"""Muestra la edad media de los personajes humanos."""

from Datos import personajes_frieren

suma = 0

for humano in personajes_frieren:
    
    suma = suma + humano["edad"]
    
res = suma / len(personajes_frieren)

print(res)
    
    