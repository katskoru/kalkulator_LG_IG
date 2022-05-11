import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalkulator_lg_ig/food_modal.dart';
import 'package:kalkulator_lg_ig/models/food_model.dart';
import 'package:kalkulator_lg_ig/models/themes/theme_cubit.dart';
import 'package:kalkulator_lg_ig/models/themes/theme_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Food data = Food(IG: 0, carbohydrates: 0, fiber: 0, name: "");
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).secondaryHeaderColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment(0.8, 0.0),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          actions: [
            BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
              return Switch(
                  activeColor: Colors.black,
                  value: state.isDarkThemeOn,
                  onChanged: (newValue) {
                    context.read<ThemeCubit>().toggleSwitch(newValue);
                  });
            })
          ],
        ),
        body: Column(
          children: [
            FoodModal(docID: "", food: data),
          ],
        ),
      ),
    );
  }
}
