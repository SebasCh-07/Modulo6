class Tienda {
  static const String nombre = "Tecnology Chebas";
  static late String anuncio;
  static int _productosVendidos = 0;

  static void cambiarAnuncio(text) {
    anuncio = text;
  }

  static void incrementarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  final int codigo;
  late String descripcion;
  double precio = 0;
  dynamic observacion;

  Producto(this.codigo);

  void registrarVenta(String descripc, double prec, dynamic observa) {
    descripcion = descripc;
    precio = prec;
    observacion = observa;
    Tienda.incrementarVentas();
  }

  void resumen() {
    print("Código: $codigo");
    print("Descripción: $descripcion");
    print("Precio: $precio");
    print("Observación: $observacion");
    print("Tienda: ${Tienda.nombre}");
    print(Tienda.anuncio);
    print("-" * 20);
  }
}
