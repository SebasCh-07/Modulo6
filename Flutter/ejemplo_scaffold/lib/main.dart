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
          onPressed: () => {print("test")},
          child: const Icon(Icons.add),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        appBar: AppBar(
          title: Text("APP TEST"),
          titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
          shadowColor: Colors.blueGrey,
          elevation: 40,
        ),

        drawer: const Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.indigo),
                  Text('HOME', style: TextStyle(color: Colors.indigo)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings, color: Colors.indigo),
                  Text('SETTINGS', style: TextStyle(color: Colors.indigo)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_rounded, color: Colors.indigo),
                  Text('ACCOUNT', style: TextStyle(color: Colors.indigo)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.help, color: Colors.indigo),
                  Text('HELP', style: TextStyle(color: Colors.indigo)),
                ],
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'CHAT'),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'EDIT'),
          ],
        ),

        body: const Center(child: Text('MY FIRST APP')),
      ),
    );
  }
}
