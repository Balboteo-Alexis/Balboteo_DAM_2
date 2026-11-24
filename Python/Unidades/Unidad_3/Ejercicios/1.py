def comprobarLetraDNI(dni: str) -> bool:

    # Letras del DNI ordenadas según el resto de la división.
    letras = "TRWAGMYFPDXBNJZSQVHLCKE"

    # Comprobamos que el DNI tenga 9 caracteres.
    if len(dni) != 9:
        return False

    # Separamos los números de la letra.
    numeros = dni[:8]
    letra = dni[8].upper()

    # Comprobamos que los primeros 8 caracteres sean dígitos.
    if not numeros.isdecimal():
        return False

    # Convertimos la cadena de números a un número entero.
    numero = int(numeros)

    # Calculamos el resto de dividir el número entre 23.
    resto = numero % 23

    # Obtenemos la letra que corresponde al resto.
    letraCorrecta = letras[resto]

    # Comprobamos si ambas letras coinciden.
    if letra == letraCorrecta:
        return True
    else:
        return False


# Pruebas de la función.
if __name__ == "__main__":

    print(comprobarLetraDNI("12345678Z"))  # True
    print(comprobarLetraDNI("12345678z"))  # True
    print(comprobarLetraDNI("12345678A"))  # False
    print(comprobarLetraDNI("1234567Z"))   # False
    print(comprobarLetraDNI("1234567AZ"))  # False