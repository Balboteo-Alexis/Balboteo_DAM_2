from abc import ABC, abstractmethod 
 
 
class  CuerpoGeometrico:
    @abstractmethod
    def superficie() -> float:
        pass
    
    
    @abstractmethod
    def volumen() -> float:
        pass
    
    
    
class Cubo(CuerpoGeometrico): 
