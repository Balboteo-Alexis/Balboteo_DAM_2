
import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Personaje } from '../../interfaces/personaje';

@Component({
  selector: 'dbz-Lista',
  standalone: false,
  styleUrl: './lista.css',
  templateUrl: './lista.html',
})
export class dbzLista {

  @Input('miLista')
  public listaPersonajes: Personaje[] = [
    { nombre: "Ninguno", fuerza: 0 }

  ];


  public annadirPersonaje(pepito: Personaje): void {
    this.listaPersonajes.push(pepito);
  }

}


