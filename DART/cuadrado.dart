import 'figura.dart';

class Cuadrado extends Figura {
  const Cuadrado(this.lado, super.color);
  final double lado;

  @override
  double calcularArea() {
    return lado * lado;
  }

  @override
  double calcularPerimetro() {
    return 4 * lado;
  }
}

void main() {
  final cuadrado = const Cuadrado(10, 'rojo');
  final area1 = cuadrado.calcularArea();
  final perimetro = cuadrado.calcularPerimetro();
  print('El área del cuadrado es: $area1, y el perímetro es: $perimetro');
}
