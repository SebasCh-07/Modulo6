void main() {
  List<String> ciudade = ["Quito", "Guayaquil", "Manta", "Cuenca"];
  print(ciudade);

  ciudade.add("Esmeraldas");
  //ciudade.add(10);
  print(ciudade);
  print(ciudade[1]);

  ciudade.remove("Esmeraldas");
  print(ciudade);

  List<List<int>> numeros = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  print(numeros[0][1]);

  List<Ciudad> ciudadesObj = [
    Ciudad("Quito", 8000),
    Ciudad("Guayaquil", 1000000),
    Ciudad("Manta", 50000),
  ];

  print(ciudadesObj[0].nombre);
  print(ciudadesObj[0].poblacion);

  ciudadesObj.add(Ciudad("Loja", 9000));

  for (var ciudad in ciudadesObj) {
    print("${ciudad.nombre}, ${ciudad.poblacion}");
  }
}

class Ciudad {
  String? nombre;
  int? poblacion;

  Ciudad(this.nombre, this.poblacion);
}
