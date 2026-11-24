def convertirTemperatura(temperatura_inicial : float, unidad_inicial : str, unidad_final : str) -> float:
    """Conviete la temperatura de una unidad a otra
    
    Params:
        temperatura_inicial(float): La temperatura que queremos convertir a otra unidad
        unidad_inicial (str) : La unidad en la que se encuentra la temperatura inicial
        unidad_final (str) : La unidad a la que queremos convertir la temperatura
        
    Returns:
        (float): La temoeratura inicial convertida de la unidad inicial a la unidad final
    """
    temperatura_final= 0
    
    if unidad_final == "C":
        if unidad_final== "F":
            temperatura_final = (temperatura_inicial * (9/5)) + 32
        if unidad_final == "K":
            temperatura_final = temperatura_inicial + 273.15
    elif unidad_inicial == "F":
        if unidad_final== "C":
            temperatura_final = (temperatura_inicial-32) *(5/9)
        elif unidad_final == "K":
            temperatura_final = temperatura_final - 273.15
        