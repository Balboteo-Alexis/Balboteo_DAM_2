import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { Heroe } from './components/heroe/heroe';
import { Lista } from './components/lista/lista';

@NgModule({
  declarations: [Heroe, Lista],
  imports: [CommonModule],
  exports: [Heroe, Lista]
})
export class HeroesModule {}
