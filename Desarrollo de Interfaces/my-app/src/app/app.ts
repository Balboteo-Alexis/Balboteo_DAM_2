
import { Component } from '@angular/core';
import { Centro } from './centros/centro/centro';
import { HeroesModule } from './heroes/heroes.module';
import { DbzModule } from './dbz/dbz.module';
import { MainPage } from './dbz/pages/main.page';


@Component({
  // app.ts, dentro de @Component
  imports: [HeroesModule, DbzModule],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {

  public title: string = "Alexis Balboteo";
  public contador: number = 0;
  public incremento: number = 3;

  reset(): void {
    this.contador = 0;
  }

  incrementarPor(num: number): void {
    this.contador += num;
  }

  descontarPor(num: number): void {
    this.contador -= num;
  }
}



