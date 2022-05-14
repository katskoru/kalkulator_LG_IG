import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kalkulator_lg_ig/models/food_model.dart';

class FoodModal extends StatefulWidget {
  FoodModal({
    Key? key,
    this.food,
    this.docID,
  }) : super(key: key);
  final Food? food;
  final String? docID;

  @override
  State<FoodModal> createState() => _FoodModalState();
}

class _FoodModalState extends State<FoodModal> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _nameController;
  TextEditingController? _IGController;
  TextEditingController? _carbohydratesController;
  TextEditingController? _fiberController;
  var _newFood = Food(name: "", IG: 0, fiber: 0, carbohydrates: 0);

  @override
  dispose() {
    _nameController!.dispose();
    _IGController!.dispose();
    _carbohydratesController!.dispose();
    _fiberController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(labelText: "Name"),
                onChanged: (value) {
                  setState(() {
                    _newFood.name = value;
                  });
                },
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter the name";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(labelText: "IG"),
                onChanged: (value) {
                  setState(() {
                    _newFood.IG = int.parse(value);
                  });
                },
                controller: _IGController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter IG";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(labelText: "Carbs"),
                onChanged: (value) {
                  setState(() {
                    _newFood.carbohydrates = double.parse(value);
                  });
                },
                controller: _carbohydratesController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter the carbs";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Fiber"),
                onChanged: (value) {
                  setState(() {
                    _newFood.fiber = double.parse(value);
                  });
                },
                controller: _fiberController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter the name";
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(190, 40)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (widget.docID == "") {
                          FirebaseFirestore.instance
                              .collection("food")
                              .add(_newFood.toJson());
                        } else {
                          FirebaseFirestore.instance
                              .collection("food")
                              .doc(widget.docID)
                              .update(_newFood.toJson());
                        }
                      }
                    },
                    child: const Text("Save"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
