class Persona {
  // "?" hace que acepte null
  String? nombre;
  int edad = 0;
  double? estatura;

  Persona(this.nombre, this.edad, this.estatura) {}
}

void main() {
  final p = Persona("Juan", 30, 1.80);
  print("Nombre: ${p.nombre}");
  print("Edad: ${p.edad}");
  print("Estatura: ${p.estatura}");
}
