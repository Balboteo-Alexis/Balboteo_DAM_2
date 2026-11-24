"""
Muestra una lista con los comentarios que tengan más de 40 caracteres.
"""

from datos import series

lista = [r["comentario"] for s in series for r in s["reseñas"] if len(r["comentario"]) > 40]
print(lista)