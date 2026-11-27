import { Component, OnInit } from '@angular/core';
import { Animal } from '../../Interfaces/animal';
@Component({
  selector: 'gato',
  templateUrl: 'gato.html',
  standalone: false,
  styleUrl: 'gato.css',

})

export class Gato implements Animal {

  nombre: string = "Callejero";
  tipo: string = "Sin definir";
  edad: number = 5;
  peso: number = 7.3;
  public vive: boolean = true;


  public cambiarNombre(): void {
    this.nombre = "Garfield";
  }

  public atropellar(): void {
    this.vive = false;
  }


}
