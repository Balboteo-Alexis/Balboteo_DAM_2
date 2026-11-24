import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { MainPage } from './pages/main.page';
import { dbzLista } from './components/lista/lista';

@NgModule({
  declarations: [
    MainPage,
    dbzLista
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
