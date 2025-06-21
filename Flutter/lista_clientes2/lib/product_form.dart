import 'package:flutter/material.dart';
import 'package:lista_clientes2/databaseHelper.dart';
import 'package:lista_clientes2/product.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agregar Producto")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: "Nombre"),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un nombre' : null,
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: "Precio"),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un precio' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: "Descripción"),
                validator: (value) => value == null || value.isEmpty
                    ? 'Ingrese una descripción'
                    : null,
              ),
              TextFormField(
                controller: _correoController,
                decoration: const InputDecoration(labelText: "Correo"),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un Correo' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final product = Product(
                      id: DateTime.now().millisecondsSinceEpoch,
                      name: _nameController.text,
                      price: double.tryParse(_priceController.text) ?? 0.0,
                      description: _descriptionController.text,
                      correo: _correoController.text,
                    );
                    await Databasehelper().insertProduct(product);
                    Navigator.pop(context, "ok");
                  }
                },
                child: const Text("Grabar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
