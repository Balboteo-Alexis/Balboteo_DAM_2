import { Component, signal } from '@angular/core';

import { ContadorComponents } from './contador/contador';

@Component({
  imports: [ ContadorComponents],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
   // protected readonly title = signal('my-app');
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
