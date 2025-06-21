import 'estudiante.dart';

void main() {
  final estudiante1 = Estudiante("Juan");
  final estudiante2 = Estudiante("Ana");

  estudiante1.cuaderno = "Matemáticas";
  estudiante2.cuaderno = "Historias";

  print(estudiante1.nombre);
  print(estudiante1.cuaderno);
  print(estudiante2.nombre);
  print(estudiante2.cuaderno);

  estudiante1.escribir("Hola desde Juan");
  print(Estudiante.pizarra);
  print(Estudiante.obtenerContador());
}
