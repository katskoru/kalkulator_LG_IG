import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/food_modal.dart';
import 'package:kalkulator_lg_ig/models/food_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Food data = Food(IG: 0, carbohydrates: 0, fiber: 0, name: "");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FoodModal(docID: "", food: data),
        ],
      ),
    );
  }
}
