import { Component } from '@angular/core';

interface CentroEducativo {
  nombreCentro: string;
  localidad: string;
  familiasProfesionales: string[];
  logo: string;
}

@Component({
  imports: [],
  selector: 'app-centro',
  styleUrl: './centro.css',
  templateUrl: './centro.html',
})
export class Centro {
  public centros: CentroEducativo[] = [
    {
      nombreCentro: 'IES Playamar',
      localidad: 'Torremolinos',
      familiasProfesionales: [
        'Informática y Comunicaciones',
        'Transporte y Mantenimiento de Vehículos',
      ],
      logo: '/PlayamarLogo.png',
    },
    {
      nombreCentro: 'IES Jacaranda',
      localidad: 'Churriana',
      familiasProfesionales: ['Hostelería y Turismo'],
      logo: '/JacarandaLogo.png',
    },
  ];

  public pila: CentroEducativo[] = [];
  public posicion = 0;

  public get centroActual(): CentroEducativo | undefined {
    return this.centros[this.posicion];
  }

  public anterior(): void {
    if (this.posicion > 0) this.posicion--;
  }

  public posterior(): void {
    if (this.posicion < this.centros.length - 1) this.posicion++;
  }

  public eliminar(): void {
    const centroEliminado = this.centros[this.posicion];
    if (!centroEliminado) return;

    this.centros.splice(this.posicion, 1);
    this.pila.push(centroEliminado);

    if (this.posicion >= this.centros.length) {
      this.posicion = Math.max(0, this.centros.length - 1);
    }
  }

  public insertar(): void {
    const centroInsertado = this.pila.pop();
    if (!centroInsertado) return;

    this.centros.splice(this.posicion, 0, centroInsertado);
  }
}
