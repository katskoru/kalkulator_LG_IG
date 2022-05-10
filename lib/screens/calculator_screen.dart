import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/wigdets/one_ingredient.dart';

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
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CircleAvatar(
          radius: 40,
          child: Text("50"),
          backgroundColor: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: ListView(children: [OneIngredient()]),
          ),
        ),
      ]),
    );
  }
}
