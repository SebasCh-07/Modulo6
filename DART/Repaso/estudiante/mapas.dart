void main() {
  Map<String, int> poblacion = {
    "Quito": 200000,
    "Guayaquil": 300000,
    "Cuenca": 400000,
  };

  print(poblacion);
  print(poblacion.keys);
  print(poblacion.values);
  print(poblacion.containsKey("Ambato"));
  print(poblacion["Quito"]);
  poblacion["Loja"] = 400000;
  print(poblacion);
  poblacion["Quito"] = 400000;
  print(poblacion);
  poblacion.remove("Cuenca");
  print(poblacion);

  Map<String, List<String>> regiones = {
    "Sierra": ["Quito", "Cuenca"],
    "Costa": ["Guayaquil", "Manta"],
    "Oriente": ["Loja", "Tena"],
  };

  print(regiones["Sierra"]);
  print(regiones["Sierra"]![1]);
}
