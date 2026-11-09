/**
 * Autor: Alexis Balboteo González
 * Fecha: 09/11/2026
 * Examen práctico DI -Temas 2 y 3
 * Archivo: main.ts 
 * 
 */


import "./topics/modelos" 
import { Centro,Direccion,Expediente } from "./topics/modelos"
import { Estudiante } from "./topics/personas"
import { calcularMedia,resumenEstudiante } from "./topics/operaciones"

import "./topics/personas" 


const centro1 = new Centro(
  "I.E.S.Playamar",
  {
  calle : "Calle rocolfo tercero N2",
  localidad: "Torremolinos",
  provincia: "Málaga",
  }

)

const estudiante1: Estudiante= new Estudiante( 
  "Alexis","Balboteo",23, "DAM",
  [
    "Desarroollo","Programacion"],

  [
    {
    curso: "1º",
    notaMedia: 8.2

    },
    {
    curso: "2º",
    notaMedia: 6.7

    },

  ],

  centro1,
  "4234324324234",
  {
    calle : "Calle Rafael N22",
    localidad: "Malaga",
    provincia: "Málaga"
  }


)

let estudiante2: Estudiante= new Estudiante( 
  "Ana","Botella",73, "DAW",
  [
    "Desarroollo","Programacion"],

  [
    {
    curso: "1º",
    notaMedia: 9.2

    },
    {
    curso: "2º",
    notaMedia: 9.7

    },

  ],

  centro1

)


let estudiantes : Estudiante[] = [

  estudiante1,
  estudiante2




]

console.log(estudiantes)



console.log("Calcular media: 8 y 6: " + calcularMedia(8,6)) // 7
console.log("Calcular media: 8: " + calcularMedia(8)) // 8
console.log("Calcular media: 8 y 0: " + calcularMedia(8,0)) // 4


console.log(resumenEstudiante(estudiante1))
console.log(resumenEstudiante(estudiante2))
