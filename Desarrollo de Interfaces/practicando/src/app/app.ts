import { Component, signal } from '@angular/core';
import { AnimalesModule } from './Animales/animales.module';

@Component({
  imports: [AnimalesModule],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  protected readonly title = signal('practicando');



  public reset() : void{
    window.location.reload();
  }

}
