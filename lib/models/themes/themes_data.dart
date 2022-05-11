import 'package:flutter/material.dart';

enum AppTheme {
  lightAppTheme,
  darkAppTheme,
}

final appThemeData = {
  AppTheme.darkAppTheme: ThemeData(
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.white,
    ),
  ),
  AppTheme.lightAppTheme: ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 170, 102, 125),
    ),
    scaffoldBackgroundColor: Color.fromARGB(255, 227, 180, 196),
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.black,
    ),
  ),
};
