import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:kalkulator_lg_ig/food_modal.dart';
import 'package:kalkulator_lg_ig/home.dart';
import 'package:kalkulator_lg_ig/models/themes/themes_data.dart';
import 'package:kalkulator_lg_ig/screens/calculator_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appThemeData[AppTheme.lightAppTheme],
      home: const CalculatorScreen(),
    );
  }
}
