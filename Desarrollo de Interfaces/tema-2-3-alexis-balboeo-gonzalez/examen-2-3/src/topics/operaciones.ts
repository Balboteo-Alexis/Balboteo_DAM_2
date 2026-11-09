/**
 * Autor: Alexis Balboteo González
 * Fecha: 09/11/2026
 * Examen práctico DI -Temas 2 y 3
 * Archivo: operaciones.ts 
 * 
 */

import { Estudiante } from "./personas";



// Con esta funcion recibe dos numeros y da la media resultante, si solo obtiene un parametro lo devuelve.
export function calcularMedia(a: number, b?:number): number{

    let res : number;

    if(b || b===0){
        res = (a+b) /2
    }
    else{
        res = a
    }


    return res;

}

// Con esta funcion resumimos brevemente al estudiante con su nombre ciclo y centro
export function resumenEstudiante( estudiante : Estudiante): string{

    return `${estudiante.nombre} ${estudiante.apellidos} - ${estudiante.ciclo} - ${estudiante.centro.nombre}`


}