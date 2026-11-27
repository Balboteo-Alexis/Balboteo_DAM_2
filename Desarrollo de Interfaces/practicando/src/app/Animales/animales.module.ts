import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { Gato } from './components/Gato/gato';
import { Perro } from './components/Perro/perro';
import { Leon } from './components/Leon/leon';
import { Lista } from './components/Lista/lista';

@NgModule({
  imports: [CommonModule],
  exports: [Gato,Perro,Leon,Lista],
  declarations: [Gato,Perro,Leon,Lista],
  providers: [],
})
export class AnimalesModule { }
