void main() {
  print("Estoy en mi computador");
  print("Quiero descargar COD Warzone");
  descargarArchivo();
  print("Estudiando mientras se descarga el juego...");
}

Future<String> procesoDescarga() {
  return Future.delayed(Duration(seconds: 6), () => "Juego descargado");
}

void descargarArchivo() async {
  print("Iniciando descarga del juego...");

  final mensaje = await procesoDescarga();
  print(mensaje);

  print("Puedes jugar COD Warzone ahora");
}
