import "tienda.dart";

void main() {
  Producto producto1 = Producto(1);
  Producto producto2 = Producto(2);

  producto1.registrarVenta("laptop Hp", 1500, "10 laptops gaming");
  producto2.registrarVenta("laptop Dell", 2000, "5 laptops gaming");

  Tienda.anuncio = "Bienvenidos a Chebas Shop :) ";

  producto1.resumen();
  producto2.resumen();

  Tienda.obtenerVentas();
}
