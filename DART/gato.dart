import 'animal.dart';

class Gato extends Animal {
  @override
  void dormir() {
    print('El gato está durmiendo');
  }
}

void main() {
  Gato gato = Gato();
  gato.dormir();
}
