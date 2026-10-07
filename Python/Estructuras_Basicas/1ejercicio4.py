"""A partir de 60 mm de lluvia acumulados en 12 horas se declara una alerta amarilla, y
a partir de 120 mm, una alerta roja. Pedir al usuario los milímetros de lluvia
acumulados y mostrar por pantalla si No hay alerta, Hay alerta amarilla o Hay
alerta roja. Realizar una versión con IF y otra con MATCH."""

mm_lluvia = int(input("Cuantos milimetros de lluvia? "))

if mm_lluvia < 60:
    print("No hay alerta")
elif mm_lluvia >60 and mm_lluvia < 120 :
    print("Alerta amarilla")
else:
    print("Alerta roja")






