"""
Muestra una lista con todos los nombres de los usuarios que hayan opinado en
alguna serie de Drama. No importa si hay nombres repetidos.
"""

from datos import series

lista = [r["usuario"] for s in series for r in s["reseñas"] if "Drama" in s["generos"]]
print(lista)