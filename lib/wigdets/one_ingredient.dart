import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/wigdets/my_text.dart';

class OneIngredient extends StatelessWidget {
  const OneIngredient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyText(
                text: "Burak",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
              MyText(
                text: "100",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
              MyText(
                text: "10",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
            ],
          ),
        ),
        Divider(color: Colors.white),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyText(
                text: "Mięcho",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
              MyText(
                text: "100",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
              MyText(
                text: "10",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
