import 'taller.dart';

void main() {
  Empleado empleado = Empleado("Carlos");

  empleado.actualizarMensajeDelTaller(
    "¡Hola! Bienvenido al mejor taller de la ciudad.",
  );

  Vehiculo vehiculo1 = Vehiculo("ABC123");
  Vehiculo vehiculo2 = Vehiculo("XYZ789");

  vehiculo1.registrarDiagnostico("Cambio de aceite");
  vehiculo2.registrarDiagnostico("Revisión de frenos");

  vehiculo1.extraInfo = "Cliente frecuente";
  vehiculo2.extraInfo = 75.5;

  vehiculo1.resumen();
  vehiculo2.resumen();

  print("Total de vehículos reparados: ${Taller.obtenerReparaciones()}");
}
