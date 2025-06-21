import 'dispositivo_electronico.dart';

class Computador extends DispositivoElectronico {
  int capacidadDisco;

  Computador(this.capacidadDisco, super.codigo, super.marca);

  @override
  void imprimir() {
    print(
      "Computador ===> codigo: $codigo, marca: $marca, capacidadDisco: $capacidadDisco",
    );
  }

  @override
  void registrarInventario() {
    print(
      "Computador: codigo: $codigo, marca: $marca, capacidadDisco: $capacidadDisco ===> registrado en inventario",
    );
  }
}

void main() {
  Computador computador = Computador(500, 1001, "HP");
  computador.imprimir();
  computador.registrarInventario();
}
