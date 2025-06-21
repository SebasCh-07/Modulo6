import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {print("hola")},
          child: const Icon(Icons.house),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        drawer: const Drawer(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text("Opción 1"),
              Text("Opción 2"),
              Text("Opción 3"),
            ],
          ),
        ),

        body: const Center(child: Text('Widgets!')),
        backgroundColor: Colors.lightGreen,

        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('HOLA MUNDO APP')),
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
