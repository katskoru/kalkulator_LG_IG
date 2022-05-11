import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/wigdets/one_ingredient.dart';

import '../wigdets/bubbles.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Kalkulator ŁG"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.light_mode),
          )
        ],
      ),
      body: Container(
        width: double.infinity * 100,
        height: double.infinity * 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor.withOpacity(0.9),
              Theme.of(context).primaryColor.withOpacity(0.95),
              Theme.of(context).secondaryHeaderColor,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.white,
            ),
            Bubbles(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: ListView(children: [OneIngredient()]),
            ),
          ],
        ),
      ),
    );
  }
}
