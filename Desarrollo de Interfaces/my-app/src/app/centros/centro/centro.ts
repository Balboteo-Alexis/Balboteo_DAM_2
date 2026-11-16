
import { Component } from '@angular/core';


@Component({
  imports: [],
  selector: 'app-centro',
  styleUrl: './centro.css',
  templateUrl: './centro.html',
})
export class Centro {

  public nombreCentro: string = "IES Playamar";
  public localidad: string = "Torremolinos";

  public familiasProfesionales: string[] = [
    "Informática y Comunicaciones",
    "Transporte y Mantenimiento de Vehículos"
  ];

  public logo: string = "/PlayamarLogo.png";

  public get nombreCapitalizado(): string {
    return this.nombreCentro.toUpperCase();
  }

  public getLogo(): string {
    return this.logo;
  }

  public getFamiliasProfesionales(): string[] {
    return this.familiasProfesionales;
  }

  public cambiarCentro(): void {

    this.nombreCentro = "IES Jacaranda";
    this.localidad = "Churriana";
    this.familiasProfesionales = ["Hostelería y Turismo"];
    this.logo = "/JacarandaLogo.png";

  }
}

