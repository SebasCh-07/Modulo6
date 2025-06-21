import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: const Text('HOME')),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.listaClientes);
          },
          color: Colors.blueAccent,
          child: Text("IR A LISTA CLIENTES"),
        ),
      ),
    );
  }
}
