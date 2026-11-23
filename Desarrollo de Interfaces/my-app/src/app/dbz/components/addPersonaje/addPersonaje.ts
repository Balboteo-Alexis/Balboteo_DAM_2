import { Component, EventEmitter, Output } from '@angular/core';
import { Personaje } from '../../interfaces/personaje';

@Component({
  selector: 'addPersonaje',
  templateUrl: 'addPersonaje.html',
  standalone: false,
})
export class addPersonaje {

  @Output()
  public nuevoPersonaje = new EventEmitter<Personaje>();

  public personaje: Personaje = {
    nombre: '',
    fuerza: 0
  };

  public annadirPersonaje(): void {

  console.log("1. Botón pulsado:", this.personaje);

  if (this.personaje.nombre.trim().length === 0) {
    return;
  }

  this.nuevoPersonaje.emit({ ...this.personaje });

  console.log("2. Personaje enviado");

  this.personaje = {
    nombre: '',
    fuerza: 0
  };
}
}
