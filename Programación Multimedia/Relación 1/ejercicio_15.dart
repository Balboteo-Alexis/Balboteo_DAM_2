// Ejercicio 15 de la Relación 1
// Fecha de creación: 07/11/2026
// Autor: Alexis Balboteo González

import 'dart:math';

void main() {
  int tiradas = 1000;
  Random azar = Random();

  for (int ronda = 1; ronda <= 2; ronda++) {
    // Dejamos la posición 0 libre para usar el número de la cara como índice.
    List<int> veces = [0, 0, 0, 0, 0, 0, 0];

    if (ronda == 1) {
      print('Dado normal ($tiradas tiradas)');
    } else {
      print('Dado trucado ($tiradas tiradas)');
    }

    for (int i = 0; i < tiradas; i++) {
      int cara;
      if (ronda == 1) {
        cara = azar.nextInt(6) + 1;
      } else {
        // El 6 tiene tres resultados a su favor y cada otra cara solo uno.
        cara = azar.nextInt(8) + 1;
        if (cara > 6) {
          cara = 6;
        }
      }
      veces[cara] = veces[cara] + 1;
    }

    for (int cara = 1; cara <= 6; cara++) {
      double porcentaje = veces[cara] * 100 / tiradas;
      print(
        'Cara $cara: ${veces[cara]} veces (${porcentaje.toStringAsFixed(1)} %)',
      );
    }
    print('');
  }
}

