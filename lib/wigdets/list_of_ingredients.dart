import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/wigdets/my_text.dart';
import 'package:kalkulator_lg_ig/wigdets/one_ingredient.dart';

import '../models/food_model.dart';

class ListOfIngredients extends StatelessWidget {
  const ListOfIngredients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 10)
          ],
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                text: "Składniki",
                color: Colors.black.withOpacity(0.9),
                size: 18,
                fontWeight: FontWeight.w500,
              ),
              IconButton(
                  onPressed: () {
                    var _newFood =
                        Food(name: "", IG: 0, fiber: 0, carbohydrates: 0);
                  },
                  icon: Icon(Icons.add))
            ],
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText(
                  text: "Nazwa",
                  color: Theme.of(context).shadowColor.withOpacity(0.7),
                  size: 16,
                ),
                MyText(
                  text: "Waga [g]",
                  color: Theme.of(context).shadowColor.withOpacity(0.7),
                  size: 16,
                ),
                MyText(
                  text: "ŁG",
                  color: Theme.of(context).shadowColor.withOpacity(0.7),
                  size: 16,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Divider(
              color: Colors.white,
              indent: 15,
              endIndent: 15,
            ),
          ),
          Expanded(
              child: ListView(
            children: [OneIngredient()],
          ))
        ],
      ),
    );
  }
}
