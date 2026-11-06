function decoradorclase(
    
    constructor: any){
    
    return class extends constructor{

        nuevaPropiedad = 'Nueva propiedad'
        hola = 'Adiós'

    }

}

@decoradorclase
class SuperClase{

    public miPropiedad: string = 'patata'


    print(){

        console.log('Hola mundo')



    }

}
console.log(SuperClase);

const superClase  = new SuperClase();
console.log(superClase);



export{}