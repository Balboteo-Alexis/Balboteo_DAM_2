class Jarra:
    def __init__ (self, capacidad, contenido = 0):
        if capacidad <= 0:
            raise ValueError("La capacidad debe ser superior a 0")
        if contenido < 0:
            raise ValueError("El contenido debe ser igual o superior a 0")
        self.capacidad = capacidad
        self.contenido = contenido
        if self.contenido > self.capacidad:
            self.contenido = self.capacidad

    def llenar (self):
        self.contenido = self.capacidad

    def vaciar (self):
        self.contenido = 0

    def servir (self, cantidad):
        if cantidad > self.contenido:
            raise ValueError("La jarra no tiene suficiente cantidad")
        self.contenido -= cantidad

    def llenar_desde (self, jarra : Jarra):
        if jarra.contenido <= (self.capacidad - self.contenido):
            self.contenido += jarra.contenido
            jarra.vaciar()
        elif jarra.contenido > (self.capacidad - self.contenido):
            jarra.contenido -= (self.capacidad - self.contenido)
            self.llenar()

    def __str__ (self):
        return f"Capacidad: {self.capacidad} | Contenido: {self.contenido}"

jarra1 = Jarra(500)
jarra2 = Jarra(1000)
jarra1.llenar()
jarra2.llenar()
jarra2.vaciar()
jarra1.servir(200)
jarra2.llenar_desde(jarra1)
print(jarra1)
print(jarra2)