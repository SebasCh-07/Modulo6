class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final String correo;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.correo,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? 0,
      name: map['name'] ?? 'Sin nombre',
      price: map['price'] != null ? map['price'].toDouble() : 0.0,
      description: map['description'] ?? 'Sin descripción',
      correo: map['mail'] ?? 'Sin correo',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'mail': correo,
    };
  }
}
