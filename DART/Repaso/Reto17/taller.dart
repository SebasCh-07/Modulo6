class Taller {
  static const String nombre = "Taller Mecánico El Buen Amigo";
  static String mensajeGeneral = "Bienvenido al Taller";
  static int _totalReparaciones = 0;

  static void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  static void incrementarContador() {
    _totalReparaciones++;
  }

  static int obtenerReparaciones() {
    return _totalReparaciones;
  }
}

class Empleado {
  String nombre;

  Empleado(this.nombre);

  void actualizarMensajeDelTaller(String nuevoMensaje) {
    Taller.cambiarMensaje(nuevoMensaje);
  }
}

class Vehiculo {
  String placa;
  String? diagnostico;
  String estado = "Pendiente";
  dynamic extraInfo;

  Vehiculo(this.placa);

  void registrarDiagnostico(String texto) {
    diagnostico = texto;
    estado = "Reparado";
    Taller.incrementarContador();
  }

  void resumen() {
    print("Placa: $placa");
    print("Diagnóstico: $diagnostico");
    print("Estado: $estado");
    print("Información Extra: $extraInfo");
    print("Mensaje del Taller: ${Taller.mensajeGeneral}");
    print("Nombre del Taller: ${Taller.nombre}");
    print("-" * 40);
  }
}
