import 'package:flutter/material.dart';
import 'package:navigation/pages/Product_pages.dart';

class ProductsListPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Product 1', prices: 10.0, description: "Producto 1"),
    Product(name: 'Product 2', prices: 20.0, description: "Producto 2"),
    Product(name: 'Product 3', prices: 30.0, description: "Producto 3"),
    Product(name: 'Product 4', prices: 40.0, description: "Producto 4"),
    Product(name: 'Product 5', prices: 50.0, description: "Producto 5"),
  ];
  ProductsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text("\$${products[index].prices.toStringAsFixed(2)}"),
          );
        },
      ),
    );
  }
}
