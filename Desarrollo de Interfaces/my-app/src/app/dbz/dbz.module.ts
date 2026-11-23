import { NgModule, Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MainPage } from './pages/main.page';
import { dbzLista } from './components/lista/lista';


@NgModule({
  declarations: [MainPage, dbzLista],
  imports: [CommonModule],
  exports: [MainPage],
})
export class DbzModule {}


