import 'package:flutter/material.dart';

import 'one_ingredient.dart';

class Bubbles extends StatelessWidget {
  const Bubbles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 250),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            right: 20,
            child: CircleAvatar(
              radius: 100,
              child: Text("50"),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
