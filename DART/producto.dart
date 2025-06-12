class Producto {
  String codigo = "";
  String nombre = "";
  String? descripcion;
  bool activo = true;
  double precio = 0.0;
  int? stock;
}

void main() {
  Producto p1 = new Producto();
  p1.codigo = "001";
  p1.nombre = "Camisa";
  p1.descripcion = "Camisa de manga larga";
  p1.precio = 20.0;
  p1.stock = 10;
  p1.activo = true;
  print("codigo: ${p1.codigo}");
  print("nombre: ${p1.nombre}");
  print("descripcion: ${p1.descripcion}");
  print("activo: ${p1.activo}");
  print("precio: ${p1.precio}");
  print("stock: ${p1.stock}");
  print("---------------------------------------------------");

  Producto p2 = Producto();
  p2.codigo = "002";
  p2.nombre = "Pantalones";
  p2.descripcion = "Pantalones de vestir";
  p2.precio = 30.0;
  p2.stock = 20;
  p2.activo = false;
  print("codigo: ${p2.codigo}");
  print("nombre: ${p2.nombre}");
  print("descripcion: ${p2.descripcion}");
  print("activo: ${p2.activo}");
  print("precio: ${p2.precio}");
  print("stock: ${p2.stock}");
  print("---------------------------------------------------");

  final p3 = Producto();
  p3.codigo = "003";
  p3.nombre = "Zapatillas";
  p3.descripcion = "Zapatillas deportivas";
  p3.precio = 40.0;
  p3.stock = 30;
  p3.activo = false;
  print("codigo: ${p3.codigo}");
  print("nombre: ${p3.nombre}");
  print("descripcion: ${p3.descripcion}");
  print("activo: ${p3.activo}");
  print("precio: ${p3.precio}");
  print("stock: ${p3.stock}");
}
