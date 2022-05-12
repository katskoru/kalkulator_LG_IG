import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalkulator_lg_ig/food_modal.dart';
import 'package:kalkulator_lg_ig/models/themes/theme_cubit.dart';
import 'package:kalkulator_lg_ig/wigdets/floating_button.dart';
import 'package:kalkulator_lg_ig/wigdets/list_of_ingredients.dart';
import 'package:kalkulator_lg_ig/wigdets/my_text.dart';
import 'package:kalkulator_lg_ig/wigdets/one_ingredient.dart';

import '../wigdets/bubbles.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({Key? key}) : super(key: key);

  double appBarHeight = AppBar().preferredSize.height;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: MyText(
            text: "Kalkulator ŁG",
            size: 30,
            color: Theme.of(context).shadowColor,
          ),
          centerTitle: true,
          actions: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Switch(
                    focusColor: Colors.white,
                    activeTrackColor: Theme.of(context).secondaryHeaderColor,
                    inactiveThumbColor: Theme.of(context).secondaryHeaderColor,
                    inactiveTrackColor: Colors.white,
                    activeColor: Colors.white,
                    value: state.isDarkThemeOn,
                    onChanged: (newValue) {
                      context.read<ThemeCubit>().toggleSwitch(newValue);
                    });
              },
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.9),
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor.withOpacity(0.9),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: appBarHeight,
              ),
              FloatingButton(),
              Bubbles(),
              ListOfIngredients(),
            ],
          ),
        ),
      ),
    );
  }
}
