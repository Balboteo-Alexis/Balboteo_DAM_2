"""
Muestra una lista de cadenas con el formato “La serie {titulo} tiene {n} reseñas”, para
todas las series.
"""

from datos import series

lista = [f"La serie {s["titulo"]} tiene {len(s["reseñas"])}" for s in series]
print(lista)