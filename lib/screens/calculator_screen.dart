import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator ŁG"), centerTitle: true, actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.light_mode),
        )
      ]),
      body: Column(
        children: [],
      ),
    );
  }
}
