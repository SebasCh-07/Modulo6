abstract class DispositivoElectronico {
  int codigo;
  String marca;

  DispositivoElectronico(this.codigo, this.marca) {}

  void imprimir() {
    print("codigo: $codigo, marca: $marca");
  }

  void registrarInventario();
}
