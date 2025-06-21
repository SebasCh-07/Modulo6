import 'package:flutter/material.dart';
import 'package:lista_clientes2/product_list.dart';
import 'package:lista_clientes2/product_form.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dbPath = await getDatabasesPath();
  final path = join(dbPath, 'product.db');

  // Eliminar base de datos antigua
  await deleteDatabase(path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Productos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProductList(),
      routes: {"/add": (context) => const ProductForm()},
    );
  }
}
