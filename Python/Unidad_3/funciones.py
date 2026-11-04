""""""


# 2.2  -> 1

def sumatorio(n:int ) -> int: 
    res = 0
    
    if n > 1 :
        for num in range(n):
            
            res = num+res
            
    return res

s = sumatorio(10)


print(s)


# 2.2  -> 2


def factorial( n: int ) -> list :
    factorial = 1
    res  = []
    if n > 1 :
        
        for i in range(1, n + 1):
            factorial = factorial * i
            res.append(factorial)
   
            
    return res
            
            
s = factorial(9)
print(s)