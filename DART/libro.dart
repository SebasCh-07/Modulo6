class Libro {
  String ISBN;
  String titulo;
  int? numeroPaginas;
  String? descripcion;

  Libro(this.ISBN, this.titulo, int numeroPaginas, String descripcion) {
    this.numeroPaginas = numeroPaginas;
    this.descripcion = descripcion;
  }
}

void main() {
  Libro libro = Libro("1234", "Odisea", 500, "La odisea de Ulises");
  print(
    "ISBN: ${libro.ISBN}, Titulo: ${libro.titulo}, Numero de paginas: ${libro.numeroPaginas}, Descripcion: ${libro.descripcion}",
  );
}
