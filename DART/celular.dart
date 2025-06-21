import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico {
  Celular(super.codigo, super.marca);

  @override
  void imprimir() {
    print("Celular ===> codigo: $codigo, marca: $marca");
  }

  @override
  void registrarInventario() {
    print(
      "Celular: codigo: $codigo, marca: $marca ===> registrado en inventario",
    );
  }
}

void main() {
  Celular celular = Celular(1002, "Samsung");
  celular.imprimir();
  celular.registrarInventario();
}
