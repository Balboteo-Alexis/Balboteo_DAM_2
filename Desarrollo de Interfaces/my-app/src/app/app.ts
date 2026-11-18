import { Component } from '@angular/core';
import { Centro } from './centros/centro/centro';

@Component({
    imports: [Centro],
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
