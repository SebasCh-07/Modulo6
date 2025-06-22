void main() {
  Map<String, int> puntajes = {};

  puntajes['Ana'] = 90;
  puntajes['Luis'] = 85;
  puntajes['Carlos'] = 70;
  puntajes['Maria'] = 95;

  print('Jugadores: ${puntajes.keys}');

  print('Puntaje de Ana: ${puntajes['Ana']}');

  puntajes['Luis'] = 88;

  puntajes['Pedro'] = 92;

  puntajes.remove('Carlos');

  puntajes.forEach((nombre, puntaje) {
    print('$nombre: $puntaje');
  });
}
