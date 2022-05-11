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
    secondaryHeaderColor: Color.fromARGB(213, 0, 0, 0),
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(bodyColor: Colors.white),
  ),
  AppTheme.lightAppTheme: ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    primaryColor: Color(0xFFE79F8D),
    secondaryHeaderColor: Color.fromARGB(255, 245, 191, 178),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(),
  ),
};
