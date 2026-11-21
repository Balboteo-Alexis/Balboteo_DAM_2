
import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-lista',
  standalone: false,
  styleUrl: './lista.css',
  templateUrl: './lista.html',
})
export class Lista {

  public listaHeroes: string[] = [
    "Goku",
    "Vegeta",
    "Gohan",
    "Piccolo",
    "Trunks"
  ];

  public heroeEliminado?: string;

  public eliminarUltimoHeroe(): void {
    this.heroeEliminado = this.listaHeroes.pop();
  }

}
