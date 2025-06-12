class Calculadora {
  int sumar(int valor1, int valor2) {
    return valor1 + valor2;
  }
}

void main() {
  final calc = Calculadora();
  print("la suma es: ${calc.sumar(10, 8)}");
}
