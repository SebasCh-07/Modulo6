void main() {
  print("Buenos días");
  prepararCafe();
  print("Leyendo un libro mientras el café está listo...");
}

Future<String> hacerCafe() {
  return Future.delayed(Duration(seconds: 5), () => "Café listo");
}

void prepararCafe() async {
  print("Encendiendo la cafetera...");

  final mensaje = await hacerCafe();
  print(mensaje);

  print("Disfrutando el café con Pan");
}
