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
  Food? _food;
  @override
  void initState() {
    _food = widget.food!;
    _nameController = TextEditingController(text: _food!.name!);
    _IGController = TextEditingController(text: _food!.IG!.toString());
    _carbohydratesController =
        TextEditingController(text: _food!.carbohydrates!.toString());
    _fiberController = TextEditingController(text: _food!.fiber!.toString());
    super.initState();
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
                    _food!.name = value;
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
                    _food!.IG = int.parse(value);
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
                    _food!.carbohydrates = double.parse(value);
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
                    _food!.fiber = double.parse(value);
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
                              .add(_food!.toJson());
                          _nameController!.clear();
                          _IGController!.clear();
                          _carbohydratesController!.clear();
                          _fiberController!.clear();
                        } else {
                          FirebaseFirestore.instance
                              .collection("food")
                              .doc(widget.docID)
                              .update(_food!.toJson());
                          _nameController!.clear();
                          _IGController!.clear();
                          _carbohydratesController!.clear();
                          _fiberController!.clear();
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
