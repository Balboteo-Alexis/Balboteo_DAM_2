"""
Muestra una lista con todos los géneros de todas las series. No importa si hay
géneros duplicados.
"""

from datos import series

lista = [g for s in series for g in s["generos"]]
print(lista)