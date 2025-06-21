import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State {
  int? valor1;
  int? valor2;
  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATOR"),
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shadowColor: Colors.lightBlue,
        elevation: 30,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Ingrese un numero"),
          TextField(
            keyboardType: TextInputType.numberWithOptions(),
            textAlign: TextAlign.center,
            controller: TextEditingController(text: "0"),
            onChanged: (value) {
              valor1 = int.parse(value);
            },
          ),
          const Text("Ingrese un numero"),
          TextField(
            keyboardType: TextInputType.numberWithOptions(),
            textAlign: TextAlign.center,
            controller: TextEditingController(text: "0"),
            onChanged: (value) {
              valor2 = int.parse(value);
            },
          ),
          SizedBox(height: 50),
          MaterialButton(
            onPressed: () {
              resultado = valor1! + valor2!;
              setState(() {});
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text("Sumar"),
          ),
          Text("Resultado: $resultado"),
        ],
      ),
    );
  }
}
