
import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  imports: [CommonModule],
  selector: 'app-lista',
  styleUrl: './lista.css',
  templateUrl: './lista.html',
})
export class Lista {

  public listaHeroes: string[] = ["Bulma", "loco", "bueno", "malo", "Kumilo"];

  public heroeEliminado?: string;

  public eliminarUltimoHeroe(): void {
    this.heroeEliminado = this.listaHeroes.pop();
  }

}
