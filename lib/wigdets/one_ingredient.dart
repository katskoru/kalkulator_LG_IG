import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/models/food_model.dart';
import 'package:kalkulator_lg_ig/wigdets/my_text.dart';

class OneIngredient extends StatefulWidget {
  OneIngredient({Key? key, required Food editedProduct}) : super(key: key);

  @override
  State<OneIngredient> createState() => _OneIngredientState();
}

class _OneIngredientState extends State<OneIngredient> {
  Food? editedProduct =
      Food(name: "", IG: 0, fiber: 0, carbohydrates: 0, grams: 0);
  final _formKey = GlobalKey<FormState>();

  _submitForm() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    // Provider.of<ProductsProvider>(context, listen: false)
    //     .addProduct(_editedProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Form(
            key: _formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      onSaved: (value) {
                        editedProduct = Food(
                          name: value!,
                          IG: editedProduct!.IG,
                          carbohydrates: editedProduct!.carbohydrates,
                          fiber: editedProduct!.fiber,
                        );
                      },
                    ),
                    height: 40,
                    width: 70),
                SizedBox(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      onSaved: (value) {
                        editedProduct = Food(
                          name: editedProduct!.name,
                          IG: editedProduct!.IG,
                          carbohydrates: editedProduct!.carbohydrates,
                          fiber: editedProduct!.fiber,
                          grams: double.parse(value!),
                        );
                      },
                      onFieldSubmitted: (_) => _submitForm(),
                    ),
                    height: 40,
                    width: 70),
                MyText(
                  text: "10",
                  color: Theme.of(context).shadowColor,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.white,
          indent: 15,
          endIndent: 15,
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyText(
                text: "Mięcho",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
              MyText(
                text: "100",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
              MyText(
                text: "10",
                color: Theme.of(context).shadowColor,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
