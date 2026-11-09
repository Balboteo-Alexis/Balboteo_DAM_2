/**
 * Autor: Alexis Balboteo González
 * Fecha: 09/11/2026
 * Examen práctico DI -Temas 2 y 3
 * Archivo: personas.ts 
 * 
 */


import "./modelos" 

import {  Centro, Direccion,Expediente } from "./modelos";


class Persona{

    public nombre: string = "Jose";
    public apellidos: string = "lama";
    public edad: number = 43;
    public telefono?: string;
    public direccion?: Direccion;

    constructor (nombre: string,apellidos: string,edad: number,telefono: string,direccion: Direccion) {


        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
        this.telefono = telefono;
        this.direccion = direccion;



    }

}

export class Estudiante extends Persona{

    public ciclo: string  = "DAM";
    public modulos: string[]= ["Desarrollo de intrfaces", "Lengua","Mates"];
    public expedientes: Expediente[];
    public centro: Centro;

    constructor( nombre: string,apellidos: string,edad: number, ciclo: string,modulos: string[],expedientes: Expediente[],centro: Centro,telefono?: string,direccion?: Direccion){

        super(nombre,apellidos,edad,telefono,direccion);
        this.ciclo = ciclo;
        this.modulos = modulos;
        this.expedientes= expedientes
        this.centro = centro;

    }

}

export{};

// Estudiante hereda las propiedades de Persona porque tiene todos sus atributos(los de Persona) y en adición tiene los suyos propios.
// Al compartir los mismo atributos que Persona podemos ahorrar codigo y hacer que la clase Estudiante sea "Hija" de Persona, heredando tambien metodos si mas a delante se añaden o cualquier modificacion.