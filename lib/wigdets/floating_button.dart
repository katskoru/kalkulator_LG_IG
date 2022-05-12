import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/food_modal.dart';
import 'package:kalkulator_lg_ig/wigdets/my_text.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      elevation: 3,
      label: Row(
        children: [
          MyText(
            text: "Dodaj produkt                ",
            color: Colors.black.withOpacity(0.9),
            size: 16,
            fontWeight: FontWeight.w500,
          ),
          Icon(
            Icons.add,
            color: Theme.of(context).shadowColor,
            size: 25,
          ),
        ],
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => FoodModal())));
      },
    );
  }
}
