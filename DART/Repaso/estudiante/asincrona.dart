void main() {
  print("Estoy en mi casa");
  pedirPizza();
  print("Viendo la TV");
}

Future<String> prepararPizza() {
  return Future.delayed(Duration(seconds: 5), () => "Pizza Entregada");
}

void pedirPizza() async {
  print("LLamando a la pizzeria");

  final mensaje = await prepararPizza();
  print(mensaje);

  print("A comer la pizza");
}
