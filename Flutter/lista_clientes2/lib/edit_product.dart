import 'package:flutter/material.dart';
import 'databaseHelper.dart';
import 'product.dart';

class EditProduct extends StatefulWidget {
  final Product product;

  const EditProduct({super.key, required this.product});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;
  late TextEditingController correoController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.product.name);
    priceController = TextEditingController(
      text: widget.product.price.toString(),
    );
    descriptionController = TextEditingController(
      text: widget.product.description,
    );
    correoController = TextEditingController(text: widget.product.correo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Producto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Nombre"),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un nombre' : null,
              ),
              TextFormField(
                controller: priceController,
                decoration: const InputDecoration(labelText: "Precio"),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un precio' : null,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: "Descripción"),
                validator: (value) => value == null || value.isEmpty
                    ? 'Ingrese una descripción'
                    : null,
              ),
              TextFormField(
                controller: correoController,
                decoration: const InputDecoration(labelText: "Correo"),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Ingrese un Correo' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final updatedProduct = Product(
                      id: widget.product.id,
                      name: nameController.text,
                      price: double.tryParse(priceController.text) ?? 0.0,
                      description: descriptionController.text,
                      correo: correoController.text,
                    );

                    await Databasehelper().updateProduct(updatedProduct);
                    Navigator.pop(context, "ok");
                  }
                },
                child: const Text("Actualizar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
