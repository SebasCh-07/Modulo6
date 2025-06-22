void main() {
  List<String> comidasFavoritas = [
    'Pizza',
    'Tacos',
    'Arroz',
    'Hamburguesa',
    'Ensalada',
  ];

  comidasFavoritas.add('Sopa');
  comidasFavoritas.remove('Tacos');

  print('Comida en la posición 2: ${comidasFavoritas[2]}');

  List<List<String>> menuSemanal = [
    ['Pan', 'Huevos', 'Carne'], // Lunes
    ['Cereal', 'Arroz con pollo', 'Sopa'], // Martes
    ['Tostadas', 'Tacos', 'Pescado'], // Miércoles
    ['Fruta', 'Lentejas', 'Ensalada'], // Jueves
    ['Yogur', 'Pasta', 'Pizza'], // Viernes
    ['Arepas', 'Hamburguesa', 'Carne'], // Sábado
    ['Galletas', 'Pollo', 'Sushi'], // Domingo
  ];

  print('Almuerzo del martes: ${menuSemanal[1][1]}');

  menuSemanal[4][2] = 'Lasaña';

  List<String> dias = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo',
  ];
  for (int i = 0; i < menuSemanal.length; i++) {
    print('${dias[i]}: ${menuSemanal[i]}');
  }
}
