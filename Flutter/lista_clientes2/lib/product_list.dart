import 'package:flutter/material.dart';
import 'package:lista_clientes2/databaseHelper.dart';
import 'package:lista_clientes2/edit_product.dart';
import 'package:lista_clientes2/product.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<StatefulWidget> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  late Future<List<Product>> _productList;

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  void _loadProducts() {
    setState(() {
      _productList = Databasehelper().getProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Productos')),
      body: FutureBuilder<List<Product>>(
        future: _productList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData ||
              snapshot.data == null ||
              snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No existen productos que mostrar'),
            );
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                final name = product.name;
                final description = product.description;
                final correo = product.correo;

                return ListTile(
                  title: Text(name),
                  subtitle: Text('$description\nCorreo: $correo'),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProduct(product: product),
                        ),
                      );
                      if (result == "ok") {
                        _loadProducts();
                      }
                    },
                  ),
                  leading: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () async {
                      await Databasehelper().deleteProduct(product.id);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Producto eliminado')),
                      );
                      _loadProducts();
                    },
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, "/add");
          if (result == "ok") {
            _loadProducts();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
