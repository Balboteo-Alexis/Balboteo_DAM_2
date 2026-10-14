"""Inserta al final de la lista un nuevo personaje que tenga todos los campos con algún
valor con sentido (puedes inventártelos, pero que sean razonables)."""


from Datos import personajes_frieren

personaje = {
"nombre": "El Crack",
"raza": "Celestial",
"clase": "Dios",
"edad": 0,
"afiliacion": ["Dioses"]
}



personajes_frieren.append(personaje)

print(personajes_frieren[-1])



