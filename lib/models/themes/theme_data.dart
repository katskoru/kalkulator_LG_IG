import 'package:flutter/material.dart';

enum AppTheme {
  lightAppTheme,
  darkAppTheme,
}

final appThemeData = {
  AppTheme.darkAppTheme: ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    primaryColor: Color.fromARGB(255, 0, 0, 0),
    secondaryHeaderColor: Color.fromARGB(255, 171, 128, 126),
    shadowColor: Color.fromARGB(255, 255, 237, 237),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    ).apply(),
  ),
  AppTheme.lightAppTheme: ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    primaryColor: Color.fromARGB(255, 231, 207, 202),
    secondaryHeaderColor: Colors.white,
    shadowColor: Color.fromARGB(255, 138, 100, 98),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(color: Color.fromARGB(255, 171, 128, 126)),
    ).apply(),
  ),
};
