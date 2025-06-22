class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);
}

void main() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [
      Pelicula('Stranger Things', 2016),
      Pelicula('The Witcher', 2019),
    ],
    'HBO': [Pelicula('Game of Thrones', 2011), Pelicula('Chernobyl', 2019)],
    'Disney+': [Pelicula('Luca', 2021), Pelicula('Encanto', 2021)],
  };

  print('Películas en Netflix:');
  for (var pelicula in catalogoStreaming['Netflix']!) {
    print('- ${pelicula.titulo}');
  }

  catalogoStreaming['Disney+']!.add(Pelicula('Elemental', 2023));

  catalogoStreaming['HBO']![0].anioEstreno = 2012;

  catalogoStreaming['Netflix']!.removeAt(1);

  for (int i = 0; i < catalogoStreaming.length; i++) {
    String plataforma = catalogoStreaming.keys.elementAt(i);
    print("-" * 20);
    print('Plataforma: $plataforma');
    for (var pelicula in catalogoStreaming[plataforma]!) {
      print("- ${pelicula.titulo} (${pelicula.anioEstreno})");
    }
    print("-" * 20);
  }
  ;
}
