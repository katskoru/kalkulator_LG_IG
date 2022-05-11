import 'package:flutter/material.dart';

import 'one_ingredient.dart';

class Bubbles extends StatelessWidget {
  const Bubbles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 370),
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Positioned(
            child: Text("SUMA", style: TextStyle(fontSize: 40)),
            top: 0,
          ),
          Positioned(
            bottom: 0,
            child: CircleAvatar(
              radius: 70,
              child: Text("50"),
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            child: Text("Ładunek glikemiczny \n            posiłku"),
            bottom: 155,
          ),
          Positioned(
            child: Text("Węglowodany"),
            top: 50,
            left: 30,
          ),
          Positioned(
            child: Text("Białka"),
            top: 20,
            right: 60,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 50,
              child: Text("20"),
              backgroundColor: Colors.white,
            ),
            top: 50,
            right: 30,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 50,
              child: Text("30"),
              backgroundColor: Colors.white,
            ),
            top: 80,
            left: 25,
          ),
        ],
      ),
    );
  }
}
