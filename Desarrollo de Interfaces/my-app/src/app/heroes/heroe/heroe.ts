import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
@Component({
  imports: [CommonModule],
  selector: 'app-heroe',
  styleUrl: './heroe.css',
  templateUrl: './heroe.html',
})
export class Heroe {


  public nombre: string = "Goku";
  public edad: number = 28;

  public get nombreCapitalizado(): string {

    return this.nombre.toUpperCase();

  }

  public getDescriptionHeroe(): string {


    return `${this.nombre} - ${this.edad}`;
  }

  private getNombrePrivado(): string {


    return `Kakarot`;

  }

  public cambiarNombre(): void {

    this.nombre = "Manolin";



  }
  public cambiarEdad(): void {

    this.edad = 1;



  }
  public reset(): void{
    this.nombre = "Goku";
    this.edad = 28;
  }


}
