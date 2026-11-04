"""
A partir de 60 mm de lluvia acumulados en 12 horas se declara una alerta amarilla, y
a partir de 120 mm, una alerta roja. Pedir al usuario los milímetros de lluvia
acumulados y mostrar por pantalla si No hay alerta, Hay alerta amarilla o Hay
alerta roja. Realizar una versión con IF y otra con MATCH.
"""

lluvia_acumulada = float(input("Milímetros de lluvia en 12 horas: "))

# Versión con IF
if lluvia_acumulada < 60:
    print("No hay alerta")
elif lluvia_acumulada >= 60 and lluvia_acumulada < 120:
    print("Alerta amarilla")
else:
    print("Alerta roja")

# Versiön con MATCH
match lluvia_acumulada:
    case x if x < 60:
        print("No hay alerta")
    case x if x >= 60 and x < 120:
        print("Alerta amarilla")
    case _:
        print("Alerta roja")
