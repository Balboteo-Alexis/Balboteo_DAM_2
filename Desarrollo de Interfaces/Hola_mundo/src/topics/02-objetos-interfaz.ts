let habilidades1 = ['Velocidad', 'Magia' , 'Curación'];

let habilidades2 = ['Velocidad' , 'Curación', 123, true];

let habilidades3: string[] = ['Velocidad', 'Magia' , 'Curación', 'Fuerza'];


const personaje = {
    
    nombre: "Goku",
    pv: 100,
    habilidades: ['Fuerza', 'velocidad']
    

}


interface Personaje {


    nombre: string;
    pv: number;
    habilidades: string[];
    procedencia?: string;





}


const saiyan: Personaje = {

    nombre : 'Veggeta',
    pv : 100,
    habilidades : ['Velocidad', 'Magia' , 'Curación', 'Fuerza'],
    procedencia : 'Marte'



}

console.table(saiyan);

export{};