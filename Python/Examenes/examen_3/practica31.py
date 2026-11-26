def convertir_acciones(compannia: str, acciones: int, cambio: str):

    cambio = cambio.upper()
    compannia = compannia.upper()
    
    total = 0

    if cambio == "LIBRA":
        acciones *= 0.83
    elif cambio == "DOLAR":
        acciones *= 1.10
    elif cambio == "EURO":
        acciones *= 1
    else:
        acciones *= 0
        
    
    if compannia == "NVDA":
        total = acciones * 156.2
    elif compannia == "SONY":
        total = acciones * 24.16
    elif compannia == "BMW":
        total = acciones * 58.12
        

    return round(total, 2)


if __name__ == "__main__":

    print(convertir_acciones("nvda", 10, "euro"))
    print(convertir_acciones("sony", 5, "dolar"))
    print(convertir_acciones("bmw", 20, "libra"))
