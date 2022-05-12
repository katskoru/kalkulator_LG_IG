import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  String? text;
  Color? color;
  double? size;
  FontWeight? fontWeight;

  MyText({this.color, this.size, this.text, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: GoogleFonts.inter().fontFamily),
    );
  }
}
