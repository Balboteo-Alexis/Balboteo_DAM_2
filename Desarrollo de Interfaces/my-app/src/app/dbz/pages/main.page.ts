import { Component } from '@angular/core';
import { Personaje } from '../interfaces/personaje';
import { dbzLista } from '../components/lista/lista';

@Component({
  selector: 'app-dbz-main-page',
  standalone: false,
  templateUrl: 'main.page.html'
})


export class MainPage {


  public personajes: Personaje[] = [
    { nombre: "Goku", fuerza: 10000 },
    { nombre: "Yamsha", fuerza: 500 },
    { nombre: "Pikolo", fuerza: 9000 },
    { nombre: "Goku", fuerza: 10000 },
    { nombre: "Yamsha", fuerza: 500 },
    { nombre: "Pikolo", fuerza: 9000 },
  ];


  public annadirPersonaje(pepito: Personaje): void {
    this.personajes = [...this.personajes, pepito];

  }

}
