/**
 * Autor: Alexis Balboteo González
 * Fecha: 09/11/2026
 * Examen práctico DI -Temas 2 y 3
 * Archivo: modelos.ts 
 * 
 */

export interface Direccion{

    calle: string;
    localidad: string;
    provincia: string;
    
}

export interface Expediente {

    curso: string;
    notaMedia: number;
    
}


export class Centro{

    public nombre: string;
    public direccion: Direccion;

    constructor(nombre: string, direccion: Direccion){

        this.nombre = nombre;
        this.direccion = direccion ;

    }



}



export{};