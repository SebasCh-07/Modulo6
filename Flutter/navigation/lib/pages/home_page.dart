import 'package:flutter/material.dart';
import 'package:navigation/pages/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: const Text('HOME')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.pushNamed(context, Routes.products);
            },
            color: Colors.blueAccent,
            child: Text("IR A PRODUCTOS"),
          ),

          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.customers);
            },
            color: Colors.blueAccent,
            child: Text("IR A CLIENTES"),
          ),

          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.listview);
            },
            color: Colors.blueAccent,
            child: Text("IR A LISTVIEW BASICO"),
          ),

          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.productsList);
            },
            color: Colors.blueAccent,
            child: Text("IR A LISTA PRODUCTOS"),
          ),
        ],
      ), //
    );
  }
}
