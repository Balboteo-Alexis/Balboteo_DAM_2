import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { MainPage } from './pages/main.page';
import { dbzLista } from './components/lista/lista';
import { addPersonaje } from './components/addPersonaje/addPersonaje';

@NgModule({
  declarations: [
    MainPage,
    dbzLista,
    addPersonaje
  ],
  imports: [
    CommonModule,
    FormsModule
  ],
  exports: [
    MainPage
  ]
})
export class DbzModule { }
