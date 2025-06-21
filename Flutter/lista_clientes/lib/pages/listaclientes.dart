import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/clientes.dart';

class ListaClientes extends StatelessWidget {
  final List<Clientes> client = [
    Clientes(name: 'Juan', lastname: "Perez", edad: 15),
    Clientes(name: 'Sebas', lastname: "Chamorro", edad: 18),
    Clientes(name: 'Vanessa', lastname: "Chicaiza", edad: 25),
    Clientes(name: 'Mauricio', lastname: "Arevalo", edad: 20),
    Clientes(name: 'Alejandro', lastname: "Figueroa", edad: 19),
    Clientes(name: 'Ariel', lastname: "Alban", edad: 17),
    Clientes(name: 'Jou', lastname: "Arevalo", edad: 15),
    Clientes(name: 'Tadeo', lastname: "Quezada", edad: 14),
    Clientes(name: 'Juan', lastname: "Rivera", edad: 21),
    Clientes(name: 'Stefy', lastname: "Perez", edad: 30),
  ];

  ListaClientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Lista de Clientes'),
      ),
      body: ListView.builder(
        itemCount: client.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${client[index].name} ${client[index].lastname}"),
            subtitle: Text("${client[index].edad}"),
            trailing: Text("${index + 1}"),
          );
        },
      ),
    );
  }
}
