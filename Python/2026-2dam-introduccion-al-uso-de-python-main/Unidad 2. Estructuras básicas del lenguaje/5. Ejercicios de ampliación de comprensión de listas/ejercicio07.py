"""
Muestra una lista de tuplas (titulo_serie, comentario) para todas las reseñas que
hayan dado una puntuación de 10.
"""

from datos import series

lista = [(s["titulo"], r["comentario"]) for s in series for r in s["reseñas"] if r["nota"] == 10]
print(lista)