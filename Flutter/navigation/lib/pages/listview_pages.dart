import 'package:flutter/material.dart';

class ListviewPages extends StatelessWidget {
  const ListviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('List View Basico'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('Item 1'),
            subtitle: Text("Subtitle del elemento 1"),
            leading: Icon(Icons.add_to_queue, color: Colors.blue),
          ),
          ListTile(
            title: Text('Item 2'),
            subtitle: Text("Subtitle del elemento 2"),
            leading: Icon(Icons.add_to_queue, color: Colors.blue),
          ),
          ListTile(
            title: Text('Item 3'),
            subtitle: Text("Subtitle del elemento 3"),
            leading: Icon(Icons.add_to_queue, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
