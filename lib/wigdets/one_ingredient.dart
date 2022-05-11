import 'package:flutter/material.dart';

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
              Text(
                "burak",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "100",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "10",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Divider(color: Colors.white),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "mięcho",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "100",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "10",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
