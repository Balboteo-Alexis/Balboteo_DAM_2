def suma1(a,b):
    return a+b


def suma2(a :int , b: int ) -> int :
    return a+b

def suma3(a,b):
    return a+b,a ,b



def suma4(*numeros):
    return sum(numeros)



a,b,c = suma3(1,2)
s1 = suma3(1,2)
print(s1)
print(a)
print(b)
print(c)


s = suma4(1,2,3,4,5,6)
print(s)