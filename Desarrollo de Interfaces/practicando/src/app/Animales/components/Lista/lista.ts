import { Component, OnInit } from '@angular/core';
import { Animal } from '../../Interfaces/animal';

@Component({
  selector: 'lista',
  templateUrl: 'lista.html',
  styleUrl: 'lista.css',
  standalone: false,
})




export class Lista {

  animal1: Animal = {


    nombre: "Callejero",
    tipo: "Sin definir",
    edad: 5,
    peso: 7.3,



  }



  public animales: Animal[] = [
    {
      nombre: "Callejero",
      tipo: "Sin definir",
      edad: 5,
      peso: 7.3,

    },
    {
      nombre: "lolaLolita",
      tipo: "Sin definir",
      edad: 15,
      peso: 3,

    },
    {
      nombre: "rambo",
      tipo: "feo",
      edad: 9,
      peso: 70.3,

    }
  ]


  public annadirAnimal(animal: Animal): void {

    this.animales.push(animal);



  }



}




