class Mensaje {
  void saludar(String nombre, String apellido, String apodo) {
    print("Hola $nombre $apellido, alias $apodo");
  }

  void darBienvenida(String nombre, String apellido, String? apodo) {
    print("Hola $nombre $apellido, alias $apodo");
  }

  void despedirse({String nombre = "", String apellido = "", String? apodo}) {
    print("Adios $nombre $apellido, alias $apodo");
  }

  void animar(
    String param1, {
    required String nombre,
    String apellido = "",
    String? apodo,
  }) {
    print("$param1 $nombre $apellido $apodo");
  }

  void test(
    String param1, {
    String param2 = "defecto",
    required String param3,
  }) {
    print("$param1 $param2 $param3");
  }
}

void main() {
  final msg = Mensaje();
  msg.saludar("Juan", "Perez", "");
  msg.darBienvenida("Juan", "Ramones", null);
  msg.despedirse(apodo: "Crack", nombre: "Juan", apellido: "Perez");
  msg.despedirse();
  msg.animar("a", nombre: "Juan");

  msg.test("Leo", param3: "Pulga");
}
