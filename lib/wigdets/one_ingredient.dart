import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/wigdets/my_text.dart';

class OneIngredient extends StatelessWidget {
  OneIngredient({Key? key}) : super(key: key);

  List lista = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Form(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    child: TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    width: 60),
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
        ),
        Divider(
          color: Colors.white,
          indent: 15,
          endIndent: 15,
        ),
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
