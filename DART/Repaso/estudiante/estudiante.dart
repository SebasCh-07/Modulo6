class Estudiante {
  final String nombre;
  late String cuaderno;
  static String pizarra = "Limpia";
  static const escuela = "14 de Julio";
  static int _contadorEstudiante = 0;

  void escribir(String msg) {
    pizarra = msg;
  }

  static obtenerContador() {
    return _contadorEstudiante;
  }

  Estudiante(this.nombre) {
    _contadorEstudiante++;
  }
}

void main() {
  print(Estudiante._contadorEstudiante);
}
