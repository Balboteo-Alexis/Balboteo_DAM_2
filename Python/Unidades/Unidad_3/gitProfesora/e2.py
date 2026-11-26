import math


class Punto:
    def __init__(self, coordenadaX=0, coordenadaY=0):
        if (coordenadaX < -100 or coordenadaX > 100 or coordenadaY < -100 or coordenadaY > 100):
            raise ValueError("Las coordenadas deben estar entre -100 y 100")

        self.coordenadaX = coordenadaX
        self.coordenadaY = coordenadaY

    def __eq__(self, puntoB : Punto):
        son_iguales = False
        if self.coordenadaX == puntoB.coordenadaX and self.coordenadaY == puntoB.coordenadaY:
            son_iguales = True
        return son_iguales


    def __str__(self):
        return f"Punto({self.coordenadaX},{self.coordenadaY})"



class Segmento :
    def __init__(self, puntoA : Punto,puntoB : Punto):
        self.puntoA = puntoA
        self.puntoB = puntoB
        
    def __eq__(self,segmentoB : Segmento):
        son_iguales: False
        if segmentoB.puntoA == self.puntoA and segmentoB.puntoB == self.puntoB:
            son_iguales: True
        return son_iguales
    
    
    def longitud(self):
        return math.sqrt((self.puntoB.coordenadaX - self.puntoA.coordenadaX)**2 + (self.puntoB.coordenadaY - self.puntoA.coordenadaY )**2)
    

    def __str__(self):
        return f"Segmento[{self.puntoA},{self.puntoB}]"
    
    
    
    

punto1 = Punto()
punto2 = Punto(3, 4)

print(punto1)
print(punto2)

segmento1 = Segmento (punto1,punto2)
print(segmento1)


print(segmento1.longitud())


