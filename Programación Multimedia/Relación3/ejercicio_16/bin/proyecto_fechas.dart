
 // Ejercicio 16 de la Relación 3
 // Fecha de creación: 22/11/2026
 // Autor: Alexis Balboteo González

 import 'package:intl/intl.dart';

 void main() {

   // Fecha y hora actual
   DateTime ahora = DateTime.now();

   print("Fecha actual: $ahora");

   // Obtener partes de la fecha
   print("Día: ${ahora.day}");
   print("Mes: ${ahora.month}");
   print("Año: ${ahora.year}");
   print("Hora: ${ahora.hour}");
   print("Minutos: ${ahora.minute}");

   // Crear una fecha
   DateTime fecha = DateTime(2026, 12, 25);

   print("Fecha creada: $fecha");

   // Sumar y restar días
   DateTime manana = ahora.add(Duration(days: 1));

   DateTime ayer = ahora.subtract(Duration(days: 1));

   print("Mañana: $manana");
   print("Ayer: $ayer");

   // Calcular diferencia entre fechas
   Duration diferencia = fecha.difference(ahora);

   print("Días hasta Navidad: ${diferencia.inDays}");

   // Formato de fecha utilizando intl
   String fechaFormateada =
       DateFormat("dd/MM/yyyy HH:mm").format(ahora);

   print("Fecha formateada: $fechaFormateada");
 }
