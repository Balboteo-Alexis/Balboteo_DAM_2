import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-contador',
  template: `

  <h1  > Hola {{ title }}</h1>

  <h3>
  Contador: {{ contador }}
  </h3>
  <p  > El numero elegido para incrementar y decrementar es el: {{ incremento }}</p>



  <button (click)="incrementarPor(incremento)" > Incrementar {{ incremento }}</button>
  <button (click)="descontarPor(incremento)" > Descontar {{ incremento }}</button>
  <button (click) = "reset()" > RESET </button>
`,
standalone: true,
})

export class ContadorComponents {
  public title: string = "Alexis Blboteo";
  public contador: number = 0;

  public incremento: number = 3;
  reset(): void {

    this.contador = 0
  }

  incrementarPor(num: number): void {

    this.contador += num;
  }
  descontarPor(num: number): void {

    this.contador -= num;
  }
}
