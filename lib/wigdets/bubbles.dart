import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalkulator_lg_ig/wigdets/my_text.dart';

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
        children: [
          Positioned(
            child: Container(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                child: MyText(
                  text: "Suma",
                  color: Color.fromARGB(255, 171, 128, 126).withOpacity(0.7),
                  size: 40,
                ),
              ),
            ),
            top: 0,
          ),
          Positioned(
            bottom: 0,
            child: CircleAvatar(
              radius: 70,
              child: MyText(
                text: "50",
                color: Colors.black.withOpacity(0.9),
                size: 60,
                fontWeight: FontWeight.w400,
              ),
              backgroundColor: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          Positioned(
            child: MyText(
              text: "Ładunek glikemiczny \n            posiłku",
              color: Theme.of(context).shadowColor,
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            bottom: 155,
          ),
          Positioned(
            child: MyText(
              text: "Węglowodany",
              color: Theme.of(context).shadowColor,
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            top: 50,
            left: 30,
          ),
          Positioned(
            child: MyText(
              text: "Białka",
              color: Theme.of(context).shadowColor,
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            top: 20,
            right: 60,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 45,
              child: MyText(
                text: "20 g",
                color: Colors.black.withOpacity(0.9),
                size: 25,
                fontWeight: FontWeight.w700,
              ),
              backgroundColor: Theme.of(context).secondaryHeaderColor,
            ),
            top: 50,
            right: 30,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 45,
              child: MyText(
                text: "1000 g",
                color: Colors.black.withOpacity(0.9),
                size: 25,
                fontWeight: FontWeight.w700,
              ),
              backgroundColor: Theme.of(context).secondaryHeaderColor,
            ),
            top: 80,
            left: 25,
          ),
        ],
      ),
    );
  }
}
