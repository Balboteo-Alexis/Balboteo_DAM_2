import { Component } from '@angular/core';
import { Personaje } from '../interfaces/personaje';

@Component({
  selector: 'app-dbz-main-page',
  standalone: false,
  templateUrl: 'main.page.html'
})


export class MainPage  {


  public personajes: Personaje[] = [
      {nombre: "Goku", fuerza: 10000},
      {nombre: "Yamsha", fuerza: 500},
      {nombre: "Pikolo", fuerza: 9000},
      {nombre: "Goku", fuerza: 10000},
      {nombre: "Yamsha", fuerza: 500},
      {nombre: "Pikolo", fuerza: 9000},
    ];
}
